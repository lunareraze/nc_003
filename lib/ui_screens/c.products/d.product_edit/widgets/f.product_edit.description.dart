part of '../_index.dart';

class ProductEditDescription extends StatelessWidget {
  const ProductEditDescription({
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
                labelText: 'Edit Description',
                hintText: ' Edit Product Description',
                errorText: _dt.rxDescription.error,
                isDense: true,
              ),
            ));
  }
}
