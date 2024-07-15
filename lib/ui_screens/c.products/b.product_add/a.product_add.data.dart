part of '_index.dart';

class ProductAddData {
  final rxTitle = 'Product Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  //*---------------------------------------------------------------------------

  final rxProductList = Prov.products.st.rxProductList;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => await _ct.createDocument(),
  );

  final rxName = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxPrice = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxQuantity = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxDescription = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.description,
    ],
  );

  //* -------------------------------------------------------------------------

  final rxPickedFile = RM.inject<XFile?>(
    () => null,
  );
}
