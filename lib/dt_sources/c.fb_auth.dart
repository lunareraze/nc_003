part of '_index.dart';

final x1FbAuth = RM.inject(() => FbAuth(), debugPrintWhenNotifiedPreMessage: '');

class FbAuth {
  final instance = FirebaseAuth.instance;
  Future signInAnonymously() async {
    final userAnonim = await instance.signInAnonymously();

    return userAnonim;
  }

  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    final signInWithEmailAndPassword = await instance.signInWithEmailAndPassword(email: email, password: password);

    return signInWithEmailAndPassword;
  }

  Future<void> signOut() async {
    await instance.signOut();
  }

  Future<UserCredential> signUpByEmail(String email, String password) async {
    final signUpByEmail = await instance.createUserWithEmailAndPassword(email: email, password: password);

    return signUpByEmail;
  }

  Future<UserCredential> signInWithGoogle() async {
    UserCredential? userCredential;

    if (kIsWeb) {
      final authProvider = GoogleAuthProvider().setCustomParameters({'prompt': 'select_account'});

      userCredential = await FirebaseAuth.instance.signInWithPopup(authProvider);
    } else {
      final googleSignIn = await GoogleSignIn().signIn();
      final googleAuth = await googleSignIn?.authentication;

      final googleAuthCredential =
          GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      userCredential = await FirebaseAuth.instance.signInWithCredential(googleAuthCredential);
    }

    return userCredential;
  }
}
