import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Products",
        "fr": "Des produits",
        "es": "Productos",
        "de": "Produkte",
        "pt": "Produtos",
        "ar": "منتجات",
        "ko": "제품"
      } +
      {
        "en": "Search",
        "fr": "Rechercher",
        "es": "Buscar",
        "de": "Suche",
        "pt": "Procurar",
        "ar": "يبحث",
        "ko": "검색"
      } +
      {
        "en": "Deliverable",
        "fr": "Livrable",
        "es": "Entregables",
        "de": "Lieferbar",
        "pt": "Entregável",
        "ar": "التسليم",
        "ko": "결과물"
      } +
      {
        "en": "Not Deliverable",
        "fr": "Non livrable",
        "es": "No entregable",
        "de": "Nicht lieferbar",
        "pt": "Não Entregável",
        "ar": "غير قابل للتسليم",
        "ko": "배송 불가"
      } +
      {
        "en": "%s Items",
        "fr": "%s éléments",
        "es": "%s artículos",
        "de": "%s Artikel",
        "pt": "%s itens",
        "ar": "%s عناصر",
        "ko": "%s 항목"
      } +
      {
        "en": "Options",
        "fr": "Options",
        "es": "Opciones",
        "de": "Optionen",
        "pt": "Opções",
        "ar": "خيارات",
        "ko": "옵션"
      } +
      {
        "en": "Available options attached to this product",
        "fr": "Options disponibles attachées à ce produit",
        "es": "Opciones disponibles adjuntas a este producto",
        "de": "Verfügbare Optionen für dieses Produkt",
        "pt": "Opções disponíveis anexadas a este produto",
        "ar": "الخيارات المتاحة المرفقة بهذا المنتج",
        "ko": "이 제품에 첨부 된 사용 가능한 옵션"
      } +
      {
        "en": "No Product",
        "fr": "Aucun produit",
        "es": "Sin producto",
        "de": "Kein Produkt",
        "pt": "Sem produto",
        "ar": "لا يوجد منتج",
        "ko": "제품 없음"
      } +
      {
        "en": "All products will appear here",
        "fr": "Tous les produits apparaîtront ici",
        "es": "Todos los productos aparecerán aquí",
        "de": "Alle Produkte werden hier angezeigt",
        "pt": "Todos os produtos aparecerão aqui",
        "ar": "ستظهر جميع المنتجات هنا",
        "ko": "모든 제품이 여기에 표시됩니다."
      };

  String get i18n => localize(this, _t);
  String fill(List<Object> params) => localizeFill(this, params);
}
