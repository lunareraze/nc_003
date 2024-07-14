part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  // await RM.storageInitializer(StoreHive());

  Serv.sample.init();

  logx.wtf('inits success');
  Serv.auth.init();
  Serv.products.init();
}
