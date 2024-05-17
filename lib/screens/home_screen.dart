import 'package:flutter/material.dart';
import 'package:get_it/core/entities/todo_entitiy.dart';
import 'package:get_it/widgets/todo_card_widget.dart';

class HomeScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => HomeScreen());

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Todo list",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:
      Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            TodoCardWidget(entitiy: TodoEntitiy.empty()),
          ],
        ),
      ),

    );
  }
}
