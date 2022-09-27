import 'dart:math';

import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';

class Point {
  final double lat;
  final double lon;

  const Point(this.lat, this.lon);
}

bool arePointsNear(Point checkPoint, Point centerPoint, int km) {
  const ky = 40000 / 360;
  final kx = cos(pi * centerPoint.lat / 180.0) * ky;
  final dx = ((centerPoint.lon - checkPoint.lon) * kx).abs();
  final dy = ((centerPoint.lat - checkPoint.lat) * ky).abs();

  return sqrt(dx * dx + dy * dy) <= km;
}

List<Sight> filterSight(int radiusKm, List<Sight> listPlace) {
  final filterList = <Sight>[];

  for (final element in listPlace) {
    final point = Point(element.lat, element.lon);

    if (arePointsNear(point, centerPoint, radiusKm)) {
      filterList.add(element);
    }
  }

  return filterList;
}
