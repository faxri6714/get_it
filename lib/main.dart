import 'package:flutter/material.dart';
import 'package:get_it/application.dart';
import 'package:hive_flutter/adapters.dart';


void main() async{

await Hive.initFlutter();
  runApp(const Application());
}
