import 'dart:math';

import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.products.prov.dart';
part 'b.products.serv.dart';
part 'c.products.repo.dart';
part 'd.products.repo.mock.dart';

ProductsProv get _pv => Prov.products.st;
ProductsServ get _sv => Serv.products;
ProductsRepo get _rp => Repo.products.st;
