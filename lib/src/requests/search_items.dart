import 'package:recombee_client/recombee_client.dart';

import 'recombee_request.dart';

class SearchItems extends RecombeeRequest {
  String userId;
  num count;
  String searchQuery;
  SearchItemsOptions? searchItemsOptions;

  SearchItems({
    required this.userId,
    required this.count,
    required this.searchQuery,
    this.searchItemsOptions,
    int timeout = 3000,
  }) : super(
          'GET',
          '/search/users/$userId/items/?searchQuery=${searchQuery.replaceAll(" ", "%20")}&count=$count&scenario=${searchItemsOptions?.scenario}&cascadeCreate=${searchItemsOptions?.cascadeCreate}&returnProperties=${searchItemsOptions?.returnProperties}&includedProperties=${searchItemsOptions?.includedProperties}&filter=${searchItemsOptions?.filter}&booster=${searchItemsOptions?.booster}&logic=${searchItemsOptions?.logic}',
          timeout,
        );

  @override
  Map<String, dynamic> requestBody() {
    return {
      'userId': userId,
    };
  }
}
