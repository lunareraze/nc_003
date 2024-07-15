part of '_index.dart';

class RegisterCtrl {
  init() => logxx.i(RegisterCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //*--------------------------------------------------------------------------

  signInWithEmailAndPassword() async {
    await Serv.auth.signInWithEmailAndPassword(_dt.rxEmail.value, _dt.rxPassword.value);
  }

  signUpSubmit() => _dt.rxForm.submit();
}
