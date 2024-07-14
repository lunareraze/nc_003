part of '../_index.dart';

class ProductAddSubmit extends StatelessWidget {
  const ProductAddSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => OnFormSubmissionBuilder(
            listenTo: _dt.rxForm,
            onSubmitting: () => const CircularProgressIndicator(),
            child: OutlinedButton(
              onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid
                  ? () {
                      _ct.submitAdd();
                    }
                  : null,
              child: const Text('submit'),
            )));
  }
}
