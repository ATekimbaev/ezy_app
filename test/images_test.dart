import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ezy_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.avatar).existsSync(), true);
    expect(File(Images.bg).existsSync(), true);
    expect(File(Images.icons).existsSync(), true);
    expect(File(Images.list).existsSync(), true);
    expect(File(Images.logo).existsSync(), true);
  });
}
