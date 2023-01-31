/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Category extends _i1.SerializableEntity {
  Category({
    this.id,
    required this.title,
    this.todos,
    required this.created_at,
  });

  factory Category.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Category(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      todos: serializationManager
          .deserialize<List<_i2.Todo>?>(jsonSerialization['todos']),
      created_at: serializationManager
          .deserialize<DateTime>(jsonSerialization['created_at']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  List<_i2.Todo>? todos;

  DateTime created_at;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'todos': todos,
      'created_at': created_at,
    };
  }
}
