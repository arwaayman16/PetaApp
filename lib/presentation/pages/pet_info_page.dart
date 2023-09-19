import 'package:flutter/material.dart';
import 'package:sec12/data/datasource/data_source.dart';
import 'package:sec12/data/models/pet.dart';
import 'package:sec12/presentation/pages/widget/confirm_adopt.dart';

class petInfo extends StatelessWidget {
  const petInfo({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Id= ${pet.id} ${pet.name}"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 8,),
          Container(
            height: 300,
            width: 400,
            child: Image.asset(
              "${pet.imageUrl}",
              width: 200,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "   ID: ${pet.id}",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
          ),
          Text(
            "   Name: ${pet.name}",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
          ),
          Container(
              padding: EdgeInsets.all(16),
              child: Text(
                    advice,
                    style: TextStyle(fontSize: 22),
                  ),),
              Spacer(),
          Container(
              child: ElevatedButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => ConfirmAdopt(pet: pet)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: Text("adopt",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              width: 410,
              height: 50,
              color: const Color.fromARGB(255, 229, 225, 224))
        ],
      ),
    );
  }
}
