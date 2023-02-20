import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ezy_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.bg).existsSync(), true);
  });
}
