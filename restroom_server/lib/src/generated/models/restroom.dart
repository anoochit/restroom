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

abstract class Restroom extends _i1.TableRow {
  Restroom._({
    int? id,
    required this.name,
    this.rating,
  }) : super(id);

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

  static final t = RestroomTable();

  static const db = RestroomRepository._();

  String name;

  List<_i2.Rating>? rating;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (rating != null)
        'rating': rating?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Restroom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    RestroomInclude? include,
  }) async {
    return session.db.find<Restroom>(
      where: where != null ? where(Restroom.t) : null,
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
  static Future<Restroom?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    RestroomInclude? include,
  }) async {
    return session.db.findSingleRow<Restroom>(
      where: where != null ? where(Restroom.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Restroom?> findById(
    _i1.Session session,
    int id, {
    RestroomInclude? include,
  }) async {
    return session.db.findById<Restroom>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RestroomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Restroom>(
      where: where(Restroom.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Restroom row, {
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
    Restroom row, {
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
    Restroom row, {
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
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Restroom>(
      where: where != null ? where(Restroom.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RestroomInclude include({_i2.RatingIncludeList? rating}) {
    return RestroomInclude._(rating: rating);
  }

  static RestroomIncludeList includeList({
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RestroomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestroomTable>? orderByList,
    RestroomInclude? include,
  }) {
    return RestroomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Restroom.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Restroom.t),
      include: include,
    );
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

class RestroomTable extends _i1.Table {
  RestroomTable({super.tableRelation}) : super(tableName: 'restrooms') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnString name;

  _i2.RatingTable? ___rating;

  _i1.ManyRelation<_i2.RatingTable>? _rating;

  _i2.RatingTable get __rating {
    if (___rating != null) return ___rating!;
    ___rating = _i1.createRelationTable(
      relationFieldName: '__rating',
      field: Restroom.t.id,
      foreignField: _i2.Rating.t.roomId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RatingTable(tableRelation: foreignTableRelation),
    );
    return ___rating!;
  }

  _i1.ManyRelation<_i2.RatingTable> get rating {
    if (_rating != null) return _rating!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'rating',
      field: Restroom.t.id,
      foreignField: _i2.Rating.t.roomId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RatingTable(tableRelation: foreignTableRelation),
    );
    _rating = _i1.ManyRelation<_i2.RatingTable>(
      tableWithRelations: relationTable,
      table: _i2.RatingTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _rating!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'rating') {
      return __rating;
    }
    return null;
  }
}

@Deprecated('Use RestroomTable.t instead.')
RestroomTable tRestroom = RestroomTable();

class RestroomInclude extends _i1.IncludeObject {
  RestroomInclude._({_i2.RatingIncludeList? rating}) {
    _rating = rating;
  }

  _i2.RatingIncludeList? _rating;

  @override
  Map<String, _i1.Include?> get includes => {'rating': _rating};

  @override
  _i1.Table get table => Restroom.t;
}

class RestroomIncludeList extends _i1.IncludeList {
  RestroomIncludeList._({
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Restroom.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Restroom.t;
}

class RestroomRepository {
  const RestroomRepository._();

  final attach = const RestroomAttachRepository._();

  final attachRow = const RestroomAttachRowRepository._();

  Future<List<Restroom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RestroomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestroomTable>? orderByList,
    _i1.Transaction? transaction,
    RestroomInclude? include,
  }) async {
    return session.dbNext.find<Restroom>(
      where: where?.call(Restroom.t),
      orderBy: orderBy?.call(Restroom.t),
      orderByList: orderByList?.call(Restroom.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Restroom?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? offset,
    _i1.OrderByBuilder<RestroomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestroomTable>? orderByList,
    _i1.Transaction? transaction,
    RestroomInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Restroom>(
      where: where?.call(Restroom.t),
      orderBy: orderBy?.call(Restroom.t),
      orderByList: orderByList?.call(Restroom.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Restroom?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RestroomInclude? include,
  }) async {
    return session.dbNext.findById<Restroom>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Restroom>> insert(
    _i1.Session session,
    List<Restroom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Restroom>(
      rows,
      transaction: transaction,
    );
  }

  Future<Restroom> insertRow(
    _i1.Session session,
    Restroom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Restroom>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Restroom>> update(
    _i1.Session session,
    List<Restroom> rows, {
    _i1.ColumnSelections<RestroomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Restroom>(
      rows,
      columns: columns?.call(Restroom.t),
      transaction: transaction,
    );
  }

  Future<Restroom> updateRow(
    _i1.Session session,
    Restroom row, {
    _i1.ColumnSelections<RestroomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Restroom>(
      row,
      columns: columns?.call(Restroom.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Restroom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Restroom>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Restroom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Restroom>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RestroomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Restroom>(
      where: where(Restroom.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Restroom>(
      where: where?.call(Restroom.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RestroomAttachRepository {
  const RestroomAttachRepository._();

  Future<void> rating(
    _i1.Session session,
    Restroom restroom,
    List<_i2.Rating> rating,
  ) async {
    if (rating.any((e) => e.id == null)) {
      throw ArgumentError.notNull('rating.id');
    }
    if (restroom.id == null) {
      throw ArgumentError.notNull('restroom.id');
    }

    var $rating = rating.map((e) => e.copyWith(roomId: restroom.id)).toList();
    await session.dbNext.update<_i2.Rating>(
      $rating,
      columns: [_i2.Rating.t.roomId],
    );
  }
}

class RestroomAttachRowRepository {
  const RestroomAttachRowRepository._();

  Future<void> rating(
    _i1.Session session,
    Restroom restroom,
    _i2.Rating rating,
  ) async {
    if (rating.id == null) {
      throw ArgumentError.notNull('rating.id');
    }
    if (restroom.id == null) {
      throw ArgumentError.notNull('restroom.id');
    }

    var $rating = rating.copyWith(roomId: restroom.id);
    await session.dbNext.updateRow<_i2.Rating>(
      $rating,
      columns: [_i2.Rating.t.roomId],
    );
  }
}
