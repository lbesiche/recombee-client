import 'package:recombee_client/recombee_client.dart';

import 'recombee_request.dart';

class RecommendItemsToUsers extends RecombeeRequest {
  dynamic userId;
  dynamic itemId;
  num count;
  RecommendItemsToUsersOptions? recommendItemsToUsersOptions;

  RecommendItemsToUsers({
    databaseId,
    required this.userId,
    required this.itemId,
    required this.count,
    this.recommendItemsToUsersOptions,
    int timeout = 3000,
  }) : super(
            'GET',
            '$databaseId/recomms/users/$userId/items/?count=$count&scenario=${recommendItemsToUsersOptions?.scenario}&cascadeCreate=${recommendItemsToUsersOptions?.cascadeCreate}&returnProperties=${recommendItemsToUsersOptions?.returnProperties}&includedProperties=${recommendItemsToUsersOptions?.includedProperties}&filter=${recommendItemsToUsersOptions?.filter}&booster=${recommendItemsToUsersOptions?.booster}&logic=${recommendItemsToUsersOptions?.logic}&minRelevance=${recommendItemsToUsersOptions?.minRelevance}&rotationRate=${recommendItemsToUsersOptions?.rotationRate}&rotationTime=${recommendItemsToUsersOptions?.rotationTime}',
            timeout);

  @override
  Map<String, dynamic> requestBody() {
    return {
      'userId': userId,
      'itemId': itemId,
    };
  }
}
