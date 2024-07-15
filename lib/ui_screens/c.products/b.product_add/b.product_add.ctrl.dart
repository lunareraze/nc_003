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
      createdAt: DateTime.now().toString(),
    );
    // await FirebaseFirestore.instance.collection('product').doc().set(product.toMap());
    logx.i(product.id);

    final imageUrl = await Serv.products.uploadImage(_dt.rxPickedFile.st, product.id);
    final productWithImage = product.copyWith(imageUrl: imageUrl);
    await Serv.products.createProductSv(productWithImage);

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, productWithImage);
    nav.back();
  }

  submitAdd() => _dt.rxForm.submit();

  pickedImage() async {
    final imagePicker = await ImagePicker().pickImage(source: ImageSource.gallery);

    _dt.rxPickedFile.st = imagePicker;
  }
}
