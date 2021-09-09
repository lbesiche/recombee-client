import 'package:recombee_client/recombee_client.dart';

import 'recombee_request.dart';

class RecommendItemsToUsers extends RecombeeRequest {
  String databaseId;
  String userId;
  num count;
  RecommendItemsToUsersOptions? recommendItemsToUsersOptions;

  RecommendItemsToUsers({
    required this.databaseId,
    required this.userId,
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
    };
  }
}
