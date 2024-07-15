part of '../_index.dart';

class RegisterReTypePassword extends StatelessWidget {
  const RegisterReTypePassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
              controller: _dt.rxPassword.controller,
              focusNode: _dt.rxPassword.focusNode,
              onEditingComplete: () => _dt.rxPassword.focusNode.unfocus(),
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: 'Retype Password',
                  hintText: 'Retype your password',
                  errorText: _dt.rxPassword.error,
                  isDense: true,
                  prefixIcon: const Icon(Icons.password)),
            ));
  }
}
