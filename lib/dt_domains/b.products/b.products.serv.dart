part of '_index.dart';

class ProductsServ {
  void init() {
    logxx.i(ProductsServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductsServ, 'rxCounter setState zsuccess');
  }

  //*--------------------------------------------------------------------------

  initProduct() async {
    _pv.rxProductLoader.stateAsync = _rp.readProduct();
  }

  addToList(List<Product> moreDataProduct) async {
    _pv.rxProductList.st = [..._pv.rxProductList.state, ...moreDataProduct];
  }

  //*--------------------------------------------------------------------------

  createProductSv(Product product) async {
    await _rp.createDocumment(product);
  }

  //*--------------------------------------------------------------------------

  initProductDetail() {
    _pv.rxProductDetail.stateAsync = _rp.readDocumentDetail(_pv.rxSelectedId.st);
  }

  chooseSelectedId(String id) {
    // _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState(
      (s) => id,
    );
  }

  //*--------------------------------------------------------------------------

  Future delete() async {
    await _rp.deleteDocument(_pv.rxSelectedId.st);

    _pv.rxProductList.st = [..._pv.rxProductList.st]..removeWhere(
        (element) => element.id == _pv.rxSelectedId.st,
      );
  }

  //*--------------------------------------------------------------------------

  Future updateProductSv(Product product) async {
    await _rp.createDocumment(product);

    Prov.products.st.rxProductList.setState(
      (s) {
        final result = _pv.rxProductList.st.indexWhere(
          (element) => element.id == _pv.rxSelectedId.st,
        );
        return s[result] = product;
      },
    );
  }

  //*--------------------------------------------------------------------------

  Future uploadImage(XFile? pickedImage, String docId) async {
    final imageFromStorage = await _rp.uploadImage(pickedImage, _pv.rxSelectedId.state);

    return imageFromStorage;
  }

  //*--------------------------------------------------------------------------
}
