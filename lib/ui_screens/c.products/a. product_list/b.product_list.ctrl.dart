part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //* ------------------------------------------------------------------------

  // Future readCollection() async {
  //   final result = await FirebaseFirestore.instance.collection('product').get();

  //   for (var element in result.docs) {
  //     logx.i(element.id);
  //   }
  // }

  selectedid(String id) {
    Serv.products.chooseSelectedId(id);
    nav.to(Routes.productDetail);
  }
}
