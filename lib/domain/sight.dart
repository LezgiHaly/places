/// Интересное место
class Sight {
  final String name;

  final double lat;

  final double lon;

  final String url;

  final String type;

  final String details;

  final String annotation;

  const Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.type,
    required this.url,
    required this.details,
    required this.annotation,
  });

  @override
  String toString() {
    return name;
  }
}
