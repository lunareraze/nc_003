part of '../_index.dart';

class ProductEditPrice extends StatelessWidget {
  const ProductEditPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
              controller: _dt.rxPrice.controller,
              focusNode: _dt.rxPrice.focusNode,
              onEditingComplete: () => _dt.rxQuantity.focusNode.requestFocus(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Edit Price',
                hintText: ' Edit Product Price',
                errorText: _dt.rxPrice.error,
                isDense: true,
              ),
            ));
  }
}
