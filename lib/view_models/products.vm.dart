import 'package:flutter/material.dart';
import 'package:fuodz/constants/app_routes.dart';
import 'package:fuodz/models/product.dart';
import 'package:fuodz/requests/product.request.dart';
import 'package:fuodz/view_models/base.view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductViewModel extends MyBaseViewModel {
  //
  ProductViewModel(BuildContext context) {
    this.viewContext = context;
  }

  //
  ProductRequest productRequest = ProductRequest();
  List<Product> products = [];
  //
  int queryPage = 1;
  String keyword = "";
  RefreshController refreshController = RefreshController();

  void initialise() {
    fetchMyProducts();
  }

  //
  fetchMyProducts({bool initialLoading = true}) async {
    if (initialLoading) {
      setBusy(true);
      refreshController.refreshCompleted();
      queryPage = 1;
    } else {
      queryPage++;
    }

    try {
      final mProducts = await productRequest.getProducts(
        page: queryPage,
        keyword: keyword,
      );
      if (!initialLoading) {
        products.addAll(mProducts);
        refreshController.loadComplete();
      } else {
        products = mProducts;
      }
      clearErrors();
    } catch (error) {
      print("Product Error ==> $error");
      setError(error);
    }

    setBusy(false);
  }

  //
  productSearch(String value) {
    keyword = value;
    fetchMyProducts();
  }

  //
  openProductDetails(Product product) {
    viewContext.navigator.pushNamed(
      AppRoutes.productDetailsRoute,
      arguments: product,
    );
  }
}
