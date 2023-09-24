import 'package:flutter/material.dart';
import 'package:sec12/data/datasource/data_source.dart';
import 'package:sec12/presentation/pages/widget/pet_grid_tile.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromARGB(255, 49, 30, 23),
        //   foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        //   title: Text(title),
        // ),
        backgroundColor: const Color.fromARGB(62, 121, 85, 72),
        body: Container(
            child: GridView.builder(
          itemCount:
              pets.where((element) => element.isFav == true).toList().length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, i) => PetGrid(
              pet: pets.where((element) => element.isFav == true).toList()[i]),
        )));
  }
}