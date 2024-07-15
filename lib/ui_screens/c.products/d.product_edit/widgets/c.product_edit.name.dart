part of '../_index.dart';

class ProductEditName extends StatelessWidget {
  const ProductEditName({super.key});

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
                labelText: 'Edit Name',
                hintText: 'Edit Product Name',
                errorText: _dt.rxName.error,
                isDense: true,
              ),
            ));
  }
}
