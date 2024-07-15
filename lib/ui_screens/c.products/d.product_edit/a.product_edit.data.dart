part of '_index.dart';

class ProductEditData {
  final rxTitle = 'Product Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
  //*---------------------------------------------------------------------------

  final rxProductDetail = Prov.products.st.rxProductDetail;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => _ct.updateProduct(),
  );

  final rxName = RM.injectTextEditing(
    text: Prov.products.st.rxProductDetail.st!.name,
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxPrice = RM.injectTextEditing(
    text: Prov.products.st.rxProductDetail.st!.price.toString(),
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxQuantity = RM.injectTextEditing(
    text: Prov.products.st.rxProductDetail.st!.quantity.toString(),
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxDescription = RM.injectTextEditing(
    text: Prov.products.st.rxProductDetail.st!.description,
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );
}
