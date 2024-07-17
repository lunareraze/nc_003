part of '../_index.dart';

class ProductEditQuantity extends StatelessWidget {
  const ProductEditQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
              controller: _dt.rxQuantity.controller,
              focusNode: _dt.rxQuantity.focusNode,
              onEditingComplete: () => _dt.rxDescription.focusNode.requestFocus(),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Edit Quantity',
                hintText: ' Edit Product Quantity',
                errorText: _dt.rxQuantity.error,
                isDense: true,
              ),
            ));
  }
}
