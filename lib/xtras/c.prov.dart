part of '_index.dart';

abstract class Prov {
  static Injected<SampleProv> get sample => _sampleProv;
  static Injected<AuthProv> get auth => _authProv;
  static Injected<ProductsProv> get products => _productsProv;
}

final _sampleProv = RM2.inj(SampleProv());

final _authProv = RM2.inj(AuthProv());

final _productsProv = RM2.inj(ProductsProv());
