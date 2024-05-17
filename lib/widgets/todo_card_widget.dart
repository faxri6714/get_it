import 'package:flutter/material.dart';
import 'package:get_it/core/entities/todo_entitiy.dart';
import 'package:intl/intl.dart';

class TodoCardWidget extends StatelessWidget {
  final TodoEntitiy entitiy;
  const TodoCardWidget({Key? key, required this.entitiy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: entitiy.isDone? Colors.blueGrey : Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: entitiy.isDone? Colors.blueGrey : Colors.grey.shade300,
            blurRadius: 10,
             spreadRadius: 1,
          )
        ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(entitiy.title,style: TextStyle(
            color:entitiy.isDone? Colors.white: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 3),
          Text(entitiy.description,style: TextStyle(
              color:entitiy.isDone? Colors.white: Colors.grey.shade400,
              fontSize: 14,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(DateFormat("dd-mm-yyyy").format(entitiy.createdAt),style: TextStyle(
      color:entitiy.isDone? Colors.white: Colors.grey.shade500,
                fontSize: 14,
              ),)
            ],
          )
        ],
      ),
    );
  }
}

