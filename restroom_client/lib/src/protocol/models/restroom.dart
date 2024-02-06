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

abstract class Restroom extends _i1.SerializableEntity {
  Restroom._({
    this.id,
    required this.name,
    this.rating,
  });

  factory Restroom({
    int? id,
    required String name,
    List<_i2.Rating>? rating,
  }) = _RestroomImpl;

  factory Restroom.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Restroom(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      rating: serializationManager
          .deserialize<List<_i2.Rating>?>(jsonSerialization['rating']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  List<_i2.Rating>? rating;

  Restroom copyWith({
    int? id,
    String? name,
    List<_i2.Rating>? rating,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (rating != null)
        'rating': rating?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _RestroomImpl extends Restroom {
  _RestroomImpl({
    int? id,
    required String name,
    List<_i2.Rating>? rating,
  }) : super._(
          id: id,
          name: name,
          rating: rating,
        );

  @override
  Restroom copyWith({
    Object? id = _Undefined,
    String? name,
    Object? rating = _Undefined,
  }) {
    return Restroom(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      rating: rating is List<_i2.Rating>? ? rating : this.rating?.clone(),
    );
  }
}
