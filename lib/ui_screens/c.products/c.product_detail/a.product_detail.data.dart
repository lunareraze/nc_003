part of '_index.dart';

class ProductDetailData {
  final rxTitle = 'Product Detail'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  //*---------------------------------------------------------------------------

  final rxProductDetail = Prov.products.st.rxProductDetail;

  final rxSelectedId = Prov.products.st.rxSelectedId;
}
