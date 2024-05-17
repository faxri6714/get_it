import 'dart:html';

import 'package:get_it/core/entities/todo_entitiy.dart';
import 'package:get_it/core/models/todo_model.dart';

import 'package:hive/hive.dart';

import 'storage_boxes.dart';

class TodoStorageService{
  save(TodoEntitiy entitiy) async{
    final box = await Hive.openBox<Map<String,dynamic>>(StorageBoxes.todo);
final model =TodoModel.fromEntity(entitiy);
   await box.add(model.toJason());
  }

 Future<List<TodoEntitiy>> getListTodo() async{
    final box = await Hive.openBox<Map<String,dynamic>>(StorageBoxes.todo);
final listJason= List<Map<String,dynamic>>.from(box.values);

final List<TodoEntitiy> listData = [];

for (var json in listJason) {
listData.add(TodoModel.fromJson(json));
}

return listData;
  }



}
