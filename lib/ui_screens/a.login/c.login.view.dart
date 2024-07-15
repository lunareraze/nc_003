part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: LoginAppbar(),
      // ),
      // floatingActionButton: const LoginFab(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 70),
              child: OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => const SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In',
                        textScaler: TextScaler.linear(3),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBoxH(20),
                      LoginEmail(),
                      SizedBoxH(20),
                      LoginPassword(),
                      SizedBoxH(20),
                      LoginSubmit(),
                      SizedBoxH(20),
                      LoginOR(),
                      SizedBoxH(20),
                      LoginAnonymous(),
                      SizedBoxH(20),
                      LoginWithGoogle(),
                      SizedBoxH(20),
                      LoginToRegister(),
                      SizedBoxH(20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
