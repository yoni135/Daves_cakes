import 'package:daves_cakes/models/cake_manager.dart';
import 'package:flutter/material.dart';
import 'models/tab_manager.dart';
import 'package:provider/provider.dart';
import 'home.dart';




Future<void> main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo', 
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      home: MultiProvider(
      providers: [
// 2
      ChangeNotifierProvider(create: (context) => TabManager()),
      ChangeNotifierProvider(create: (context)=>CakeManager()),
// TODO 10: Add GroceryManager Provider
      ],
      child: const Home(),
),
    );
  }
}
