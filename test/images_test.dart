import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ezy_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ezyLogo).existsSync(), true);
    expect(File(Images.frame).existsSync(), true);
    expect(File(Images.iconex).existsSync(), true);
    expect(File(Images.iconexRemove).existsSync(), true);
    expect(File(Images.allCars).existsSync(), true);
    expect(File(Images.arrowUp).existsSync(), true);
    expect(File(Images.avatar).existsSync(), true);
    expect(File(Images.avatarProfil).existsSync(), true);
    expect(File(Images.bg).existsSync(), true);
    expect(File(Images.card).existsSync(), true);
    expect(File(Images.dumpTruck).existsSync(), true);
    expect(File(Images.excavator).existsSync(), true);
    expect(File(Images.icons).existsSync(), true);
    expect(File(Images.list).existsSync(), true);
    expect(File(Images.logo).existsSync(), true);
    expect(File(Images.profile).existsSync(), true);
    expect(File(Images.truckCrane).existsSync(), true);
  });
}
