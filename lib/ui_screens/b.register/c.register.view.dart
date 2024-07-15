part of '_index.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: RegisterAppbar(),
      // ),
      // // floatingActionButton: const LoginFab(),
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
                        'Register',
                        textScaler: TextScaler.linear(3),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBoxH(20),
                      RegisterEmail(),
                      SizedBoxH(20),
                      RegisterPassword(),
                      SizedBoxH(20),
                      RegisterReTypePassword(),
                      SizedBoxH(20),
                      RegisterSubmit(),
                      SizedBoxH(20),
                      RegisterBack(),
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
