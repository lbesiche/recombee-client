class RecommendItemsToUsersOptions {
  String? scenario;
  bool? cascadeCreate;
  bool? returnProperties;
  List<String>? includedProperties;
  String? filter;
  String? booster;
  dynamic logic;
  String? minRelevance;
  num? rotationRate;
  num? rotationTime;

  RecommendItemsToUsersOptions({
    this.scenario,
    this.cascadeCreate,
    this.returnProperties,
    this.includedProperties,
    this.filter,
    this.booster,
    this.logic,
    this.minRelevance,
    this.rotationRate,
    this.rotationTime,
  });
}
