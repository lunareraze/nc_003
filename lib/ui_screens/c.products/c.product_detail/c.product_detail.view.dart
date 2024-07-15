part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  get onData => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductDetailAppbar(),
        ),
        floatingActionButton: const ProductDetailFab(),
        body: OnBuilder.all(
          listenTo: _dt.rxProductDetail,
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, refreshError) => const Text('error'),
          onData: (data) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnReactive(
                  () => data!.imageUrl.isNotEmpty
                      ? SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.network(data.imageUrl),
                        )
                      : const SizedBox.shrink(),
                ),
                const SizedBoxH(20),
                Text('${data?.id}'),
                Text('${data?.name}'),
                Text('${data?.price}'),
                Text('${data?.quantity}'),
                Text('${data?.description}'),
              ],
            ),
          ),
        ));
  }
}
