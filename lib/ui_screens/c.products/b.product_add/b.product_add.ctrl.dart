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
      name: _dt.rxName.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxPrice.value),
      description: _dt.rxDescription.value,
      createdAt: "",
      imageUrl: "",
    );
    // await FirebaseFirestore.instance.collection('product').doc().set(product.toMap());
    Serv.products.createProductSv(product);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }

  submitAdd() => _dt.rxForm.submit();
}
