part of '../_index.dart';

class LoginOR extends StatelessWidget {
  const LoginOR({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        SizedBoxW(3),
        Text('OR'),
        SizedBoxW(3),
        Expanded(child: Divider()),
      ],
    );
  }
}
