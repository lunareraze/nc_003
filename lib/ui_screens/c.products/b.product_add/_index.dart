import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc_003/dt_domains/_models/a.product.dart';
import 'package:nc_003/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_add.data.dart';
part 'b.product_add.ctrl.dart';
part 'c.product_add.view.dart';
part 'widgets/a.product_add.appbar.dart';
part 'widgets/b.product_add.fab.dart';
part 'widgets/c.product_add.name.dart';
part 'widgets/d.product_add.price.dart';
part 'widgets/e.product_add.quantity.dart';
part 'widgets/f.product_add.description.dart';
part 'widgets/g.product_add.submit.dart';
part 'widgets/h.product_add.image.dart';

ProductAddData get _dt => Data.productAdd.st;
ProductAddCtrl get _ct => Ctrl.productAdd;
