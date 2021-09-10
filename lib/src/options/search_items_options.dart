class SearchItemsOptions {
  String? scenario;
  bool? cascadeCreate;
  bool? returnProperties;
  List<String>? includedProperties;
  String? filter;
  String? booster;
  dynamic logic;

  SearchItemsOptions({
    this.scenario,
    this.cascadeCreate,
    this.returnProperties,
    this.includedProperties,
    this.filter,
    this.booster,
    this.logic,
  });
}
