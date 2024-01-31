/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Rating extends _i1.TableRow {
  Rating._({
    int? id,
    required this.timestamp,
    required this.score,
    required this.roomId,
    this.room,
  }) : super(id);

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

  static final t = RatingTable();

  static const db = RatingRepository._();

  DateTime timestamp;

  int score;

  int roomId;

  _i2.Restroom? room;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'timestamp': timestamp,
      'score': score,
      'roomId': roomId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'timestamp': timestamp.toJson(),
      'score': score,
      'roomId': roomId,
      if (room != null) 'room': room?.allToJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'timestamp':
        timestamp = value;
        return;
      case 'score':
        score = value;
        return;
      case 'roomId':
        roomId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Rating>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    RatingInclude? include,
  }) async {
    return session.db.find<Rating>(
      where: where != null ? where(Rating.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Rating?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    RatingInclude? include,
  }) async {
    return session.db.findSingleRow<Rating>(
      where: where != null ? where(Rating.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Rating?> findById(
    _i1.Session session,
    int id, {
    RatingInclude? include,
  }) async {
    return session.db.findById<Rating>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RatingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Rating>(
      where: where(Rating.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Rating>(
      where: where != null ? where(Rating.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RatingInclude include({_i2.RestroomInclude? room}) {
    return RatingInclude._(room: room);
  }

  static RatingIncludeList includeList({
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RatingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RatingTable>? orderByList,
    RatingInclude? include,
  }) {
    return RatingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Rating.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Rating.t),
      include: include,
    );
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

class RatingTable extends _i1.Table {
  RatingTable({super.tableRelation}) : super(tableName: 'ratings') {
    timestamp = _i1.ColumnDateTime(
      'timestamp',
      this,
    );
    score = _i1.ColumnInt(
      'score',
      this,
    );
    roomId = _i1.ColumnInt(
      'roomId',
      this,
    );
  }

  late final _i1.ColumnDateTime timestamp;

  late final _i1.ColumnInt score;

  late final _i1.ColumnInt roomId;

  _i2.RestroomTable? _room;

  _i2.RestroomTable get room {
    if (_room != null) return _room!;
    _room = _i1.createRelationTable(
      relationFieldName: 'room',
      field: Rating.t.roomId,
      foreignField: _i2.Restroom.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RestroomTable(tableRelation: foreignTableRelation),
    );
    return _room!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        timestamp,
        score,
        roomId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'room') {
      return room;
    }
    return null;
  }
}

@Deprecated('Use RatingTable.t instead.')
RatingTable tRating = RatingTable();

class RatingInclude extends _i1.IncludeObject {
  RatingInclude._({_i2.RestroomInclude? room}) {
    _room = room;
  }

  _i2.RestroomInclude? _room;

  @override
  Map<String, _i1.Include?> get includes => {'room': _room};

  @override
  _i1.Table get table => Rating.t;
}

class RatingIncludeList extends _i1.IncludeList {
  RatingIncludeList._({
    _i1.WhereExpressionBuilder<RatingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Rating.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Rating.t;
}

class RatingRepository {
  const RatingRepository._();

  final attachRow = const RatingAttachRowRepository._();

  Future<List<Rating>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RatingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RatingTable>? orderByList,
    _i1.Transaction? transaction,
    RatingInclude? include,
  }) async {
    return session.dbNext.find<Rating>(
      where: where?.call(Rating.t),
      orderBy: orderBy?.call(Rating.t),
      orderByList: orderByList?.call(Rating.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Rating?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? offset,
    _i1.OrderByBuilder<RatingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RatingTable>? orderByList,
    _i1.Transaction? transaction,
    RatingInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Rating>(
      where: where?.call(Rating.t),
      orderBy: orderBy?.call(Rating.t),
      orderByList: orderByList?.call(Rating.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Rating?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RatingInclude? include,
  }) async {
    return session.dbNext.findById<Rating>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Rating>> insert(
    _i1.Session session,
    List<Rating> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Rating>(
      rows,
      transaction: transaction,
    );
  }

  Future<Rating> insertRow(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Rating>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Rating>> update(
    _i1.Session session,
    List<Rating> rows, {
    _i1.ColumnSelections<RatingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Rating>(
      rows,
      columns: columns?.call(Rating.t),
      transaction: transaction,
    );
  }

  Future<Rating> updateRow(
    _i1.Session session,
    Rating row, {
    _i1.ColumnSelections<RatingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Rating>(
      row,
      columns: columns?.call(Rating.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Rating> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Rating>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Rating>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RatingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Rating>(
      where: where(Rating.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RatingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Rating>(
      where: where?.call(Rating.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RatingAttachRowRepository {
  const RatingAttachRowRepository._();

  Future<void> room(
    _i1.Session session,
    Rating rating,
    _i2.Restroom room,
  ) async {
    if (rating.id == null) {
      throw ArgumentError.notNull('rating.id');
    }
    if (room.id == null) {
      throw ArgumentError.notNull('room.id');
    }

    var $rating = rating.copyWith(roomId: room.id);
    await session.dbNext.updateRow<Rating>(
      $rating,
      columns: [Rating.t.roomId],
    );
  }
}
