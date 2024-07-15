part of '_index.dart';

class ProductsRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductsRepo');
    return x;
  }

  //*--------------------------------------------------------------------------

  Future<List<Product>> readProduct() async {
    List<Product> product = [];

    final result = await x1FbFireStore.st.readCollection(_pv.collProduct);

    for (var element in result.docs) {
      product.add(Product.fromMap(element.data()));
    }

    return product;
  }

  Future createDocumment(Product product) async {
    await x1FbFireStore.st.createDocument(_pv.collProduct, product.id, product.toMap());
  }

  //*--------------------------------------------------------------------------

  Future<Product> readDocumentDetail(String docId) async {
    final result = await x1FbFireStore.st.readProductDetail(_pv.collProduct, docId);
    return Product.fromMap(result.data() ?? {});
  }

  //*--------------------------------------------------------------------------

  Future<void> deleteDocument(String docId) async {
    await x1FbFireStore.st.deleteDocument(_pv.collProduct, docId);
  }

  //*--------------------------------------------------------------------------

  Future<dynamic> updateProduct(Product product) async {
    await x1FbFireStore.st.createDocument(_pv.collProduct, product.id, product.toMap());
  }

  //*--------------------------------------------------------------------------
}
