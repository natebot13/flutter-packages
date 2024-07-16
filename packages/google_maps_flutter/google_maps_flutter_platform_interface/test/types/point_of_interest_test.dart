// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';

import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('PointOfInterest constructor', () {
    test('constructor defaults', () {
      const String placeId = 'placeId';

      const PointOfInterest poi = PointOfInterest(
        placeId: PointOfInterestId(placeId),
      );

      expect(poi.position, equals(const LatLng(0.0, 0.0)));
      expect(poi.name, equals(''));
      expect(poi.placeId, equals('placeId'));
    });
  });
}
