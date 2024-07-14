part of '../_index.dart';

class ProductAddName extends StatelessWidget {
  const ProductAddName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
              controller: _dt.rxName.controller,
              focusNode: _dt.rxName.focusNode,
              onEditingComplete: () => _dt.rxPrice.focusNode.requestFocus(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Product Name',
                hintText: 'Filled with name',
                errorText: _dt.rxName.error,
                isDense: true,
              ),
            ));
  }
}
