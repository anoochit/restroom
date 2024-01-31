import 'package:restroom_client/restroom_client.dart';
import 'package:restroom_flutter/config.dart';
import 'package:restroom_flutter/serverpod.dart';

class RestroomService {
  // register
  static Future<Restroom?> registerRoom() async {
    return await client.restroom.registerRoom(Restroom(name: roomName));
  }

  // rate
  static Future<Rating> rateRoom(
      {required int roomId, required int score}) async {
    return await client.rating.createRating(
      Rating(
        timestamp: DateTime.now(),
        score: score,
        roomId: roomId,
      ),
    );
  }
}
