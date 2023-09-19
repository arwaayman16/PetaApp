import 'package:flutter/material.dart';
import 'package:sec12/data/datasource/data_source.dart';
import 'package:sec12/data/models/pet.dart';
import 'package:sec12/presentation/pages/widget/pet_grid_tile.dart';

class petPage extends StatefulWidget {
  const petPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<petPage> createState() => _petPageState();
}

class _petPageState extends State<petPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.brown,
          foregroundColor: Colors.white,
          title: Text("pets page"),
        ),
        body: Container(
      
          child: GridView.builder(
          
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, i) => PetGrid(
              pet: pets[i],
            ),
            itemCount: pets.length,
          ),
        ));
  }
}
