import 'package:flutter/material.dart';
import 'package:sec12/data/datasource/data_source.dart';
import 'package:sec12/data/models/pet.dart';
import 'package:sec12/presentation/pages/pets_page.dart';

class AddPet extends StatefulWidget {
  const AddPet({super.key});

  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {

   int id = pets.length+1;
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController name = TextEditingController(),image = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          title: Text("Add category"),
        ),
        body: Form(
            key: key,
            child: Column(
              children: [
                 TextFormField(
                  decoration: InputDecoration(hintText: " Enter pet Image"),
                  controller: image,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " Enter pet name"),
                  controller: name,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        id++;
                        pets.add(Pet(id, image.text, name.text));
                        print(id);
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => petPage()));
                    },
                    child: Text(
                      " add",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                    ))
              ],
            )));
  }
}