import 'package:restroom_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RestroomEndpoint extends Endpoint {
  // register restrooms
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

  // get restrooms
  Future<List<Restroom>> getRestRooms(Session session) async {
    final restrooms = await Restroom.db.find(session);
    return restrooms;
  }

  // get restroom with rating
  Future<List<Restroom>> getRestRoom(Session session, int id) async {
    final restrooms = await Restroom.db.find(
      session,
      where: (t) => (t.id.equals(id)),
      include: Restroom.include(
        rating: Rating.includeList(),
      ),
    );
    return restrooms;
  }
}
