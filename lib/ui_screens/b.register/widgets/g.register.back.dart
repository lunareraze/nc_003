part of '../_index.dart';

class RegisterBack extends StatelessWidget {
  const RegisterBack({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        nav.to(Routes.login);
      },
      child: const Text('Have an account? Login'),
    );
  }
}
