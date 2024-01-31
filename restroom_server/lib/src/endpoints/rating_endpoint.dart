import 'package:restroom_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RatingEndpoint extends Endpoint {
  // add rating
  Future<Rating> createRating(Session session, Rating rating) async {
    return await Rating.db.insertRow(session, rating);
  }
}
