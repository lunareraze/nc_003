part of '_index.dart';

class ProductsRepoMock implements ProductsRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductsRepoMock');
    return x;
  }

  @override
  Future<List<Product>> readProduct() {
    throw UnimplementedError();
  }

  @override
  Future createDocumment(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<Product> readDocumentDetail(String docId) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteDocument(String docId) {
    throw UnimplementedError();
  }

  @override
  Future updateProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future uploadImage(XFile? pickedImage, String ref) {
    throw UnimplementedError();
  }

  @override
  Future delete() {
    throw UnimplementedError();
  }
}
