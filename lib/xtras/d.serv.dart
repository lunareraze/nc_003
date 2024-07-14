part of '_index.dart';

abstract class Serv {
  static SampleServ get sample => SampleServ();
  static AuthServ get auth => AuthServ();
  static ProductsServ get products => ProductsServ();
}
