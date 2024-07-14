part of '_index.dart';

class ProductsServ {
  void init() {
    logxx.i(ProductsServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductsServ, 'rxCounter setState success');
  }

  //*--------------------------------------------------------------------------

  initProduct() async {
    _pv.rxProductLoader.stateAsync = _rp.readProduct();
  }

  addToList(List<Product> moreDataProduct) async {
    _pv.rxProductList.st = [..._pv.rxProductList.state, ...moreDataProduct];
  }
}
