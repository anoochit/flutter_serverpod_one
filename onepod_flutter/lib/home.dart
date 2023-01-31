import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:onepod_client/onepod_client.dart';
import 'package:onepod_flutter/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                client.category.addCategory(
                    Category(title: "Important", created_at: DateTime.now()));
              },
              child: const Text("Add category"),
            ),
            ElevatedButton(
              onPressed: () {
                client.category.getCategories().then((value) {
                  value.forEach((element) {
                    log('category => ${element.id} ${element.title}');
                  });
                });
              },
              child: const Text("List category"),
            ),
            ElevatedButton(
              onPressed: () {
                client.todo.addTodo(
                  Todo(
                    title: 'Hi Task 1',
                    is_complete: false,
                    categoryId: 1,
                    created_at: DateTime.now(),
                  ),
                );
              },
              child: const Text("Add todo"),
            ),
            ElevatedButton(
              onPressed: () {
                client.todo.getTodos().then((value) {
                  value.forEach((element) {
                    log('todo => ${element.id}, ${element.title}, ${element.categoryId}');
                  });
                });
              },
              child: const Text("List todos"),
            ),
            ElevatedButton(
              onPressed: () {
                client.category.getCategoryById(1).then((value) {
                  log('category => ${value!.id}, ${value.title}');
                  List<Todo>? todos = value.todos;
                  if (todos != null) {
                    todos.forEach((element) {
                      log('todo => ${element.id}, ${element.title}');
                    });
                  }
                });
              },
              child: const Text("List category = 1"),
            ),
          ],
        ),
      ),
    );
  }
}
