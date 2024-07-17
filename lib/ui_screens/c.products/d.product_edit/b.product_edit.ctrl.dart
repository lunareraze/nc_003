part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //*--------------------------------------------------------------------------

  Future updateProduct() async {
    Product productEdit = Product(
      id: _dt.rxProductDetail.st!.id,
      name: _dt.rxName.value,
      description: _dt.rxDescription.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      createdAt: _dt.rxProductDetail.st!.createdAt,
    );

    final imageUrl = await Serv.products.uploadImage(_dt.rxPickedFile.st, productEdit.id);
    final productWithImage = productEdit.copyWith(imageUrl: imageUrl);
    productEdit = productWithImage;

    await Serv.products.updateProductSv(productEdit);

    nav.back();
    nav.back();
  }

  submitEdit() => _dt.rxForm.submit();

  //*--------------------------------------------------------------------------

  pickedImage() async {
    final imagePicker = await ImagePicker().pickImage(source: ImageSource.gallery);

    _dt.rxPickedFile.st = imagePicker;
  }
}
