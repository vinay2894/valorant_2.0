class Mapsmodel {
  String displayName;
  String tacticalDescription;
  String coordinates;
  String displayIcon;
  String listViewIcon;
  String listViewIconTall;
  String splash;
  String premierBackgroundImage;

  Mapsmodel({
    required this.displayName,
    required this.tacticalDescription,
    required this.coordinates,
    required this.displayIcon,
    required this.listViewIcon,
    required this.listViewIconTall,
    required this.premierBackgroundImage,
    required this.splash,
  });

  factory Mapsmodel.fromMap({required Map<String, dynamic> data}) {
    return Mapsmodel(
      displayName: data['displayName'] ?? '',
      tacticalDescription: data['tacticalDescription'] ?? '',
      coordinates: data['coordinates'] ?? '',
      displayIcon: data['displayIcon'] ?? '',
      listViewIcon: data['listViewIcon'] ?? '',
      listViewIconTall: data['listViewIconTall'] ?? '',
      premierBackgroundImage: data['premierBackgroundImage'] ?? '',
      splash: data['splash'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'tacticalDescription': tacticalDescription,
      'coordinates': coordinates,
      'displayIcon': displayIcon,
      'listViewIcon': listViewIcon,
      'listViewIconTall': listViewIconTall,
      'premierBackgroundImage': premierBackgroundImage,
      'splash': splash,
    };
  }
}
