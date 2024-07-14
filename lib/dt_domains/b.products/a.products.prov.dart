part of '_index.dart';

class ProductsProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  //*---------------------------------------------------------------------------

  final collProduct = 'product';

  final rxSelectedId = RM.inject(() => '');

  final rxProductLoader = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProduct(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.data;

          _sv.addToList(moreProduct!);
        }
      },
    ),
  );

//* to collect prod list
  final rxProductList = RM.inject<List<Product>>(
    () => [],
  );

  //* to collect prod detail view

  final rxProductDetail = RM.injectFuture<Product?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => _sv.initProductDetail(),
      ));
}
