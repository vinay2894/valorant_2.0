class WeaponsModel {
  String uuid;
  String displayName;
  String category;
  String defaultSkinUuid;
  String displayIcon;
  String killStreamIcon;
  String assetPath;

  WeaponsModel({
    required this.displayName,
    required this.displayIcon,
    required this.assetPath,
    required this.category,
    required this.defaultSkinUuid,
    required this.killStreamIcon,
    required this.uuid,
  });
  factory WeaponsModel.fromMap({required Map<String, dynamic> data}) {
    return WeaponsModel(
      displayName: data['displayName'] ?? '',
      displayIcon: data['displayIcon'] ?? '',
      assetPath: data['assetPath'] ?? '',
      category: data['category'] ?? '',
      defaultSkinUuid: data['defaultSkinUuid'] ?? '',
      killStreamIcon: data['killStreamIcon'] ?? '',
      uuid: data['uuid'] ?? '',
    );
  }
}
