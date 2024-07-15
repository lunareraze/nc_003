part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductEditAppbar(),
      ),
      floatingActionButton: const ProductEditFab(),
      body: Center(
        child: OnBuilder.all(
          listenTo: _dt.rxForm,
          onWaiting: () => const CircularProgressIndicator(),
          onError: (error, refreshError) => const Text('error on edit'),
          onData: (data) => Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductEditName(),
                    SizedBoxH(20),
                    ProductEditPrice(),
                    SizedBoxH(20),
                    ProductEditQuantity(),
                    SizedBoxH(20),
                    ProductEditDescription(),
                    SizedBoxH(30),
                    ProductEditSubmit()
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
