import 'package:flutter/material.dart';
import 'package:sec12/data/datasource/data_source.dart';
import 'package:sec12/presentation/pages/form_page.dart';
import 'package:sec12/presentation/pages/pet_info_page.dart';
import 'package:sec12/presentation/pages/pets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(197, 49, 13, 1)),
        useMaterial3: true,
      ),
      home:petPage(), 
    );
  }
}

