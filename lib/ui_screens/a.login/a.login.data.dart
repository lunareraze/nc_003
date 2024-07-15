part of '_index.dart';

class LoginData {
  final rxTitle = 'Login'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  //* --------------------------------------------------------------------------

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => await _ct.signInWithEmailAndPassword(),
  );

  final rxEmail = RM.injectTextEditing(
    // validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
      Validate.isEmail,
    ],
  );
  final rxPassword = RM.injectTextEditing(
    // validateOnTyping: true,
    validators: [
      Validate.isNotEmpty,
    ],
  );
}
