part of '_index.dart';

class ProductsRepoMock implements ProductsRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductsRepoMock');
    return x;
  }
}