import 'recombee_request.dart';

class AddDetailView extends RecombeeRequest {
  String userId;
  String itemId;
  String? recommId;

  AddDetailView({
    required this.userId,
    required this.itemId,
    this.recommId,
    int timeout = 3000,
  }) : super('POST', '/detailviews/', timeout);

  @override
  Map<String, dynamic> requestBody() {
    return {
      'userId': userId,
      'itemId': itemId,
      'recommId': recommId,
    };
  }
}
