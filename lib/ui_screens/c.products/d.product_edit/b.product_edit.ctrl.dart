part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //*--------------------------------------------------------------------------

  Future updateProduct() async {
    final productEdit = Product(
      id: _dt.rxProductDetail.st!.id,
      name: _dt.rxName.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      description: _dt.rxDescription.value,
      // imageUrl: '',
      // createdAt: '',
    );

    Serv.products.updateProductSv(productEdit);
  }

  submitEdit() => _dt.rxForm.submit();
}
