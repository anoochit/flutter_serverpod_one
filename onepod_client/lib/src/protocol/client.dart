/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:onepod_client/src/protocol/category.dart' as _i3;
import 'package:onepod_client/src/protocol/todo.dart' as _i4;
import 'package:serverpod_auth_client/module.dart' as _i5;
import 'dart:io' as _i6;
import 'protocol.dart' as _i7;

class _EndpointCategory extends _i1.EndpointRef {
  _EndpointCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'category';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'category',
        'hello',
        {'name': name},
      );

  _i2.Future<List<_i3.Category>> getCategories() =>
      caller.callServerEndpoint<List<_i3.Category>>(
        'category',
        'getCategories',
        {},
      );

  _i2.Future<void> addCategory(_i3.Category category) =>
      caller.callServerEndpoint<void>(
        'category',
        'addCategory',
        {'category': category},
      );

  _i2.Future<_i3.Category?> getCategoryById(int id) =>
      caller.callServerEndpoint<_i3.Category?>(
        'category',
        'getCategoryById',
        {'id': id},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointTodo extends _i1.EndpointRef {
  _EndpointTodo(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'todo';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'todo',
        'hello',
        {'name': name},
      );

  _i2.Future<List<_i4.Todo>> getTodos() =>
      caller.callServerEndpoint<List<_i4.Todo>>(
        'todo',
        'getTodos',
        {},
      );

  _i2.Future<void> addTodo(_i4.Todo todo) => caller.callServerEndpoint<void>(
        'todo',
        'addTodo',
        {'todo': todo},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i6.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i7.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    category = _EndpointCategory(this);
    example = _EndpointExample(this);
    todo = _EndpointTodo(this);
    modules = _Modules(this);
  }

  late final _EndpointCategory category;

  late final _EndpointExample example;

  late final _EndpointTodo todo;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'category': category,
        'example': example,
        'todo': todo,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
