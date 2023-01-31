/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Category extends _i1.TableRow {
  Category({
    int? id,
    required this.title,
    this.todos,
    required this.created_at,
  }) : super(id);

  factory Category.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Category(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      todos: serializationManager
          .deserialize<List<_i2.Category>?>(jsonSerialization['todos']),
      created_at: serializationManager
          .deserialize<DateTime>(jsonSerialization['created_at']),
    );
  }

  static final t = CategoryTable();

  String title;

  List<_i2.Category>? todos;

  DateTime created_at;

  @override
  String get tableName => 'category';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'todos': todos,
      'created_at': created_at,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'created_at': created_at,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'todos': todos,
      'created_at': created_at,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'created_at':
        created_at = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Category>> find(
    _i1.Session session, {
    CategoryExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Category>(
      where: where != null ? where(Category.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Category?> findSingleRow(
    _i1.Session session, {
    CategoryExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Category>(
      where: where != null ? where(Category.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Category?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Category>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CategoryExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Category>(
      where: where(Category.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    CategoryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Category>(
      where: where != null ? where(Category.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CategoryExpressionBuilder = _i1.Expression Function(CategoryTable);

class CategoryTable extends _i1.Table {
  CategoryTable() : super(tableName: 'category');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final created_at = _i1.ColumnDateTime('created_at');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        created_at,
      ];
}

@Deprecated('Use CategoryTable.t instead.')
CategoryTable tCategory = CategoryTable();
