/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../protocol.dart' as _i2;

abstract class Rating extends _i1.SerializableEntity {
  Rating._({
    this.id,
    required this.timestamp,
    required this.score,
    required this.roomId,
    this.room,
  });

  factory Rating({
    int? id,
    required DateTime timestamp,
    required int score,
    required int roomId,
    _i2.Restroom? room,
  }) = _RatingImpl;

  factory Rating.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Rating(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      timestamp: serializationManager
          .deserialize<DateTime>(jsonSerialization['timestamp']),
      score: serializationManager.deserialize<int>(jsonSerialization['score']),
      roomId:
          serializationManager.deserialize<int>(jsonSerialization['roomId']),
      room: serializationManager
          .deserialize<_i2.Restroom?>(jsonSerialization['room']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime timestamp;

  int score;

  int roomId;

  _i2.Restroom? room;

  Rating copyWith({
    int? id,
    DateTime? timestamp,
    int? score,
    int? roomId,
    _i2.Restroom? room,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'timestamp': timestamp.toJson(),
      'score': score,
      'roomId': roomId,
      if (room != null) 'room': room?.toJson(),
    };
  }
}

class _Undefined {}

class _RatingImpl extends Rating {
  _RatingImpl({
    int? id,
    required DateTime timestamp,
    required int score,
    required int roomId,
    _i2.Restroom? room,
  }) : super._(
          id: id,
          timestamp: timestamp,
          score: score,
          roomId: roomId,
          room: room,
        );

  @override
  Rating copyWith({
    Object? id = _Undefined,
    DateTime? timestamp,
    int? score,
    int? roomId,
    Object? room = _Undefined,
  }) {
    return Rating(
      id: id is int? ? id : this.id,
      timestamp: timestamp ?? this.timestamp,
      score: score ?? this.score,
      roomId: roomId ?? this.roomId,
      room: room is _i2.Restroom? ? room : this.room?.copyWith(),
    );
  }
}
