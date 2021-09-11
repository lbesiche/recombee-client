class RecommendItemsToItemOptions {
  String? scenario;
  bool? cascadeCreate;
  bool? returnProperties;
  List<String>? includedProperties;
  String? filter;
  String? booster;
  dynamic logic;
  num? userImpact;
  String? minRelevance;
  num? rotationRate;
  num? rotationTime;

  RecommendItemsToItemOptions({
    this.scenario,
    this.cascadeCreate,
    this.returnProperties,
    this.includedProperties,
    this.filter,
    this.booster,
    this.logic,
    this.userImpact,
    this.minRelevance,
    this.rotationRate,
    this.rotationTime,
  });
}
