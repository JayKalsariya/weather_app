// class Weather {
//   Location location;
//   Current current;
//
//   Weather({
//     required this.location,
//     required this.current,
//   });
//
//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         location: Location.fromJson(json["location"]),
//         current: Current.fromJson(json["current"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "location": location.toJson(),
//         "current": current.toJson(),
//       };
// }
//
// class Current {
//   int lastUpdatedEpoch;
//   String lastUpdated;
//   double tempC;
//   double tempF;
//   int isDay;
//   Condition condition;
//   double windMph;
//   double windKph;
//   int windDegree;
//   String windDir;
//   int pressureMb;
//   double pressureIn;
//   int precipMm;
//   int precipIn;
//   int humidity;
//   int cloud;
//   double feelslikeC;
//   int feelslikeF;
//   double windchillC;
//   double windchillF;
//   double heatindexC;
//   int heatindexF;
//   double dewpointC;
//   double dewpointF;
//   int visKm;
//   int visMiles;
//   int uv;
//   double gustMph;
//   double gustKph;
//
//   Current({
//     required this.lastUpdatedEpoch,
//     required this.lastUpdated,
//     required this.tempC,
//     required this.tempF,
//     required this.isDay,
//     required this.condition,
//     required this.windMph,
//     required this.windKph,
//     required this.windDegree,
//     required this.windDir,
//     required this.pressureMb,
//     required this.pressureIn,
//     required this.precipMm,
//     required this.precipIn,
//     required this.humidity,
//     required this.cloud,
//     required this.feelslikeC,
//     required this.feelslikeF,
//     required this.windchillC,
//     required this.windchillF,
//     required this.heatindexC,
//     required this.heatindexF,
//     required this.dewpointC,
//     required this.dewpointF,
//     required this.visKm,
//     required this.visMiles,
//     required this.uv,
//     required this.gustMph,
//     required this.gustKph,
//   });
//
//   factory Current.fromJson(Map<String, dynamic> json) => Current(
//         lastUpdatedEpoch: json["last_updated_epoch"],
//         lastUpdated: json["last_updated"],
//         tempC: json["temp_c"]?.toDouble(),
//         tempF: json["temp_f"]?.toDouble(),
//         isDay: json["is_day"],
//         condition: Condition.fromJson(json["condition"]),
//         windMph: json["wind_mph"]?.toDouble(),
//         windKph: json["wind_kph"]?.toDouble(),
//         windDegree: json["wind_degree"],
//         windDir: json["wind_dir"],
//         pressureMb: json["pressure_mb"],
//         pressureIn: json["pressure_in"]?.toDouble(),
//         precipMm: json["precip_mm"],
//         precipIn: json["precip_in"],
//         humidity: json["humidity"],
//         cloud: json["cloud"],
//         feelslikeC: json["feelslike_c"]?.toDouble(),
//         feelslikeF: json["feelslike_f"],
//         windchillC: json["windchill_c"]?.toDouble(),
//         windchillF: json["windchill_f"]?.toDouble(),
//         heatindexC: json["heatindex_c"]?.toDouble(),
//         heatindexF: json["heatindex_f"],
//         dewpointC: json["dewpoint_c"]?.toDouble(),
//         dewpointF: json["dewpoint_f"]?.toDouble(),
//         visKm: json["vis_km"],
//         visMiles: json["vis_miles"],
//         uv: json["uv"],
//         gustMph: json["gust_mph"]?.toDouble(),
//         gustKph: json["gust_kph"]?.toDouble(),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "last_updated_epoch": lastUpdatedEpoch,
//         "last_updated": lastUpdated,
//         "temp_c": tempC,
//         "temp_f": tempF,
//         "is_day": isDay,
//         "condition": condition.toJson(),
//         "wind_mph": windMph,
//         "wind_kph": windKph,
//         "wind_degree": windDegree,
//         "wind_dir": windDir,
//         "pressure_mb": pressureMb,
//         "pressure_in": pressureIn,
//         "precip_mm": precipMm,
//         "precip_in": precipIn,
//         "humidity": humidity,
//         "cloud": cloud,
//         "feelslike_c": feelslikeC,
//         "feelslike_f": feelslikeF,
//         "windchill_c": windchillC,
//         "windchill_f": windchillF,
//         "heatindex_c": heatindexC,
//         "heatindex_f": heatindexF,
//         "dewpoint_c": dewpointC,
//         "dewpoint_f": dewpointF,
//         "vis_km": visKm,
//         "vis_miles": visMiles,
//         "uv": uv,
//         "gust_mph": gustMph,
//         "gust_kph": gustKph,
//       };
// }
//
// class Condition {
//   String text;
//   String icon;
//   int code;
//
//   Condition({
//     required this.text,
//     required this.icon,
//     required this.code,
//   });
//
//   factory Condition.fromJson(Map<String, dynamic> json) => Condition(
//         text: json["text"],
//         icon: json["icon"],
//         code: json["code"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "text": text,
//         "icon": icon,
//         "code": code,
//       };
// }
//
// class Location {
//   String name;
//   String region;
//   String country;
//   double lat;
//   double lon;
//   String tzId;
//   int localtimeEpoch;
//   String localtime;
//
//   Location({
//     required this.name,
//     required this.region,
//     required this.country,
//     required this.lat,
//     required this.lon,
//     required this.tzId,
//     required this.localtimeEpoch,
//     required this.localtime,
//   });
//
//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         name: json["name"],
//         region: json["region"],
//         country: json["country"],
//         lat: json["lat"]?.toDouble(),
//         lon: json["lon"]?.toDouble(),
//         tzId: json["tz_id"],
//         localtimeEpoch: json["localtime_epoch"],
//         localtime: json["localtime"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "region": region,
//         "country": country,
//         "lat": lat,
//         "lon": lon,
//         "tz_id": tzId,
//         "localtime_epoch": localtimeEpoch,
//         "localtime": localtime,
//       };
// }

class Weather {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;

  Weather({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        name: json["name"],
        region: json["region"],
        country: json["country"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        tzId: json["tz_id"],
        localtimeEpoch: json["localtime_epoch"],
        localtime: json["localtime"],
        lastUpdatedEpoch: json["last_updated_epoch"],
        lastUpdated: json["last_updated"],
        tempC: json["temp_c"]?.toDouble(),
        tempF: json["temp_f"]?.toDouble(),
        isDay: json["is_day"],
        condition: json["condition"] == null
            ? null
            : Condition.fromJson(json["condition"]),
        windMph: json["wind_mph"]?.toDouble(),
        windKph: json["wind_kph"]?.toDouble(),
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressureMb: json["pressure_mb"],
        pressureIn: json["pressure_in"]?.toDouble(),
        precipMm: json["precip_mm"],
        precipIn: json["precip_in"],
        humidity: json["humidity"],
        cloud: json["cloud"],
        feelslikeC: json["feelslike_c"]?.toDouble(),
        feelslikeF: json["feelslike_f"]?.toDouble(),
        windchillC: json["windchill_c"]?.toDouble(),
        windchillF: json["windchill_f"]?.toDouble(),
        heatindexC: json["heatindex_c"]?.toDouble(),
        heatindexF: json["heatindex_f"]?.toDouble(),
        dewpointC: json["dewpoint_c"],
        dewpointF: json["dewpoint_f"]?.toDouble(),
        visKm: json["vis_km"],
        visMiles: json["vis_miles"],
        uv: json["uv"],
        gustMph: json["gust_mph"],
        gustKph: json["gust_kph"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "region": region,
        "country": country,
        "lat": lat,
        "lon": lon,
        "tz_id": tzId,
        "localtime_epoch": localtimeEpoch,
        "localtime": localtime,
        "last_updated_epoch": lastUpdatedEpoch,
        "last_updated": lastUpdated,
        "temp_c": tempC,
        "temp_f": tempF,
        "is_day": isDay,
        "condition": condition?.toJson(),
        "wind_mph": windMph,
        "wind_kph": windKph,
        "wind_degree": windDegree,
        "wind_dir": windDir,
        "pressure_mb": pressureMb,
        "pressure_in": pressureIn,
        "precip_mm": precipMm,
        "precip_in": precipIn,
        "humidity": humidity,
        "cloud": cloud,
        "feelslike_c": feelslikeC,
        "feelslike_f": feelslikeF,
        "windchill_c": windchillC,
        "windchill_f": windchillF,
        "heatindex_c": heatindexC,
        "heatindex_f": heatindexF,
        "dewpoint_c": dewpointC,
        "dewpoint_f": dewpointF,
        "vis_km": visKm,
        "vis_miles": visMiles,
        "uv": uv,
        "gust_mph": gustMph,
        "gust_kph": gustKph,
      };
}

class Condition {
  String text;
  String icon;
  int code;

  Condition({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json["text"],
        icon: json["icon"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "icon": icon,
        "code": code,
      };
}
