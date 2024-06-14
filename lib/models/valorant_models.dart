class Valorantmodel {
  final String displayName;
  final String description;
  final String developerName;
  final String displayIconSmall;
  final String killfeedPortrait;
  final String fullPortrait;
  final String background;
  final String fullPortraitV2;
  final List<String> backgroundGradientColors;

  Valorantmodel({
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.displayIconSmall,
    required this.killfeedPortrait,
    required this.fullPortrait,
    required this.background,
    required this.fullPortraitV2,
    required this.backgroundGradientColors,
  });

  factory Valorantmodel.fromMap({required Map<String, dynamic> data}) {
    return Valorantmodel(
      displayName: data['displayName'] ?? '',
      description: data['description'] ?? '',
      developerName: data['developerName'] ?? '',
      displayIconSmall: data['displayIconSmall'] ?? '',
      killfeedPortrait: data['killfeedPortrait'] ?? '',
      fullPortrait: data['fullPortrait'] ?? '',
      background: data['background'] ?? '',
      fullPortraitV2: data['fullPortraitV2'] ?? '',
      backgroundGradientColors:
          List<String>.from(data['backgroundGradientColors'] ?? []),
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'description': description,
      'developerName': developerName,
      'displayIconSmall': displayIconSmall,
      'killfeedPortrait': killfeedPortrait,
      'fullPortrait': fullPortrait,
      'background': background,
      'fullPortraitV2': fullPortraitV2,
      'backgroundGradientColors': backgroundGradientColors,
    };
  }
}

class Ability {
  String slot;
  String displayName;
  String description;
  String displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory Ability.fromMap(Map<String, dynamic> ability) => Ability(
        slot: ability["slot"],
        displayName: ability["displayName"],
        description: ability["description"],
        displayIcon: ability["displayIcon"],
      );

  Map<String, dynamic> toMap() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}
