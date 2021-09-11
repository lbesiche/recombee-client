import 'package:recombee_client/recombee_client.dart';

import 'recombee_request.dart';

class RecommenItemsToItem extends RecombeeRequest {
  String itemId;
  String userId;
  int count;
  RecommendItemsToItemOptions? recommendItemsToItemOptions;

  RecommenItemsToItem({
    required this.userId,
    required this.itemId,
    required this.count,
    this.recommendItemsToItemOptions,
    int timeout = 3000,
  }) : super(
            'GET',
            '/recomms/items/$itemId/items/?targetUserId=$userId&count=$count&scenario=${recommendItemsToItemOptions?.scenario}&cascadeCreate=${recommendItemsToItemOptions?.cascadeCreate}&returnProperties=${recommendItemsToItemOptions?.returnProperties}&includedProperties=${recommendItemsToItemOptions?.includedProperties}&filter=${recommendItemsToItemOptions?.filter}&booster=${recommendItemsToItemOptions?.booster}&logic=${recommendItemsToItemOptions?.logic}&userImpact=${recommendItemsToItemOptions?.userImpact}&minRelevance=${recommendItemsToItemOptions?.minRelevance}&rotationRate=${recommendItemsToItemOptions?.rotationRate}&rotationTime=${recommendItemsToItemOptions?.rotationTime}',
            timeout);

  @override
  Map<String, dynamic> requestBody() {
    return {
      'userId': userId,
    };
  }
}
