/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Restroom extends _i1.TableRow {
  Restroom._({
    int? id,
    required this.name,
  }) : super(id);

  factory Restroom({
    int? id,
    required String name,
  }) = _RestroomImpl;

  factory Restroom.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Restroom(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = RestroomTable();

  static const db = RestroomRepository._();

  String name;

  @override
  _i1.Table get table => t;

  Restroom copyWith({
    int? id,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
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
  }) async {
    return session.db.findSingleRow<Restroom>(
      where: where != null ? where(Restroom.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Restroom?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Restroom>(id);
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

  static RestroomInclude include() {
    return RestroomInclude._();
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
  }) : super._(
          id: id,
          name: name,
        );

  @override
  Restroom copyWith({
    Object? id = _Undefined,
    String? name,
  }) {
    return Restroom(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
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

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];
}

@Deprecated('Use RestroomTable.t instead.')
RestroomTable tRestroom = RestroomTable();

class RestroomInclude extends _i1.IncludeObject {
  RestroomInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

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

  Future<List<Restroom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RestroomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RestroomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RestroomTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Restroom>(
      where: where?.call(Restroom.t),
      orderBy: orderBy?.call(Restroom.t),
      orderByList: orderByList?.call(Restroom.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
  }) async {
    return session.dbNext.findFirstRow<Restroom>(
      where: where?.call(Restroom.t),
      orderBy: orderBy?.call(Restroom.t),
      orderByList: orderByList?.call(Restroom.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Restroom?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Restroom>(
      id,
      transaction: transaction,
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
