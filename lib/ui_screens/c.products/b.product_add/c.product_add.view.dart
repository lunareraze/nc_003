part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({super.key});

  get onError => null;

  get onData => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAddAppbar(),
      ),
      floatingActionButton: const ProductAddFab(),
      body: Center(
        child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: OnFormBuilder(
              listenTo: _dt.rxForm,
              builder: () => const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductAddName(),
                  SizedBoxH(20),
                  ProductAddPrice(),
                  SizedBoxH(20),
                  ProductAddQuantity(),
                  SizedBoxH(20),
                  ProductAddDescription(),
                  SizedBoxH(30),
                  ProductAddSubmit()
                ],
              ),
            )),
      ),
    );
  }
}
