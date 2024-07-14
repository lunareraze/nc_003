part of '../_index.dart';

class ProductAddDescription extends StatelessWidget {
  const ProductAddDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
              controller: _dt.rxDescription.controller,
              focusNode: _dt.rxDescription.focusNode,
              onEditingComplete: () => _dt.rxDescription.focusNode.unfocus(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Product Desc',
                hintText: 'Filled with Desc',
                errorText: _dt.rxDescription.error,
                isDense: true,
              ),
            ));
  }
}
