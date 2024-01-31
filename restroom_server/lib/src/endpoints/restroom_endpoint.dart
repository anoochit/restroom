import 'package:restroom_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RestroomEndpoint extends Endpoint {
  // register room
  Future<Restroom> registerRoom(Session session, Restroom restroom) async {
    final roomExist = await Restroom.db.find(
      session,
      where: (t) => t.name.equals(restroom.name),
    );

    if (roomExist.isEmpty) {
      return await Restroom.db.insertRow(session, restroom);
    } else {
      return roomExist.first;
    }
  }
}
