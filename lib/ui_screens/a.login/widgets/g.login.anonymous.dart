part of '../_index.dart';

class LoginAnonymous extends StatelessWidget {
  const LoginAnonymous({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => OnFormSubmissionBuilder(
        listenTo: _dt.rxForm,
        onSubmitting: () => const CircularProgressIndicator(),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              fixedSize: const Size.fromWidth(200),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            _ct.signInAnonymously();
          },
          child: const Text(
            "Login Anonymously",
          ),
        ),
      ),
    );
  }
}