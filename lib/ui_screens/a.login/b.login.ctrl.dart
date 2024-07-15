part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //*---------------------------------------------------------------------------

  signInAnonymously() async {
    await Serv.auth.signInAnonymously();
  }

  signInWithEmailAndPassword() async {
    await Serv.auth.signInWithEmailAndPassword(_dt.rxEmail.value, _dt.rxPassword.value);
  }

  signInWithGoogle() async {
    await Serv.auth.signInWithGoogle();
  }

  submitLogin() => _dt.rxForm.submit();
}
