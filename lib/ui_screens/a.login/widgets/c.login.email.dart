part of '../_index.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
              controller: _dt.rxEmail.controller,
              focusNode: _dt.rxEmail.focusNode,
              onEditingComplete: () => _dt.rxPassword.focusNode.requestFocus(),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@mail.com',
                  errorText: _dt.rxEmail.error,
                  isDense: true,
                  prefixIcon: const Icon(Icons.email)),
            ));
  }
}
