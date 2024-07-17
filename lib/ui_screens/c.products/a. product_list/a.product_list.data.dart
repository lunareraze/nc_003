part of '_index.dart';

class ProductListData {
  final rxTitle = 'Product List'.inj();

  // final rxTitle = 'DOLLS'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  //*--------------------------------------------------------------------------

  final rxProductList = Prov.products.st.rxProductList;

  final rxProductLoader = Prov.products.st.rxProductLoader;

  final rxSelectedId = Prov.products.st.rxSelectedId;
}
