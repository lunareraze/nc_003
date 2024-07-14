part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductListAppbar(),
        ),
        floatingActionButton: const ProductListFab(),
        body: OnBuilder.all(
          listenToMany: [_dt.rxProductList, _dt.rxProductLoader],
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, refreshError) => const Text('error'),
          onData: (data) => Column(
            children: [
              ...List.generate(
                _dt.rxProductList.st.length,
                (index) => OnReactive(
                  () => Card(
                    color: Colors.blueGrey.shade700,
                    child: ListTile(
                      title: Text(_dt.rxProductList.st[index].name),
                      subtitle: Text(_dt.rxProductList.st[index].id),
                      onTap: () {
                        _ct.selectedid(_dt.rxProductList.st[index].id);
                      },
                      selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
