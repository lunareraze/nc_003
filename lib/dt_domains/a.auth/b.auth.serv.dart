part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(AuthServ, 'rxCounter setState success');
  }

  //*--------------------------------------------------------------------------

  responseAuthState(User? user) async {
    if (nav.routeData.location == '/login' || nav.routeData.location == '/register') {
      nav.toReplacement(Routes.productList);
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.login);
      }
    }
  }

  //*--------------------------------------------------------------------------

  Future signInAnonymously() async {
    await x1FbAuth.st.signInAnonymously();
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    await x1FbAuth.st.createEmailAndPassword(email, password);
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    await x1FbAuth.st.createEmailAndPassword(email, password);
  }

  Future signOut() async {
    await x1FbAuth.st.signOut();
  }

  Future signInWithGoogle() async {
    await x1FbAuth.st.signInByGoogle();
  }

  Future createEmailAndPassword(String email, String password) async {
    await x1FbAuth.st.createEmailAndPassword(email, password);
  }
}
