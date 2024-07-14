part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //*--------------------------------------------------------------------------

  Future<void> createDocument() async {
    final id = const Uuid().v1();

    final product = Product(
      id: id,
      name: generateWordPairs().take(2).join('  '),
      description: generateWordPairs().take(6).join('   '),
      price: Random().nextInt(100),
      quantity: Random().nextInt(100),
      createdAt: "",
      imageUrl: "",
    );
    // await FirebaseFirestore.instance.collection('product').doc().set(product.toMap());
    Serv.products.createProductSv(product);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }
}
