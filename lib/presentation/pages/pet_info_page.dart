import 'package:flutter/material.dart';
import 'package:sec12/data/datasource/data_source.dart';
import 'package:sec12/data/models/pet.dart';
import 'package:sec12/presentation/pages/widget/confirm_adopt.dart';
import 'package:fluttertoast/fluttertoast.dart';

class petInfo extends StatefulWidget {
  const petInfo({super.key, required this.pet});
  final Pet pet;

  @override
  State<petInfo> createState() => _petInfoState();
}

class _petInfoState extends State<petInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Id= ${widget.pet.id} ${widget.pet.name}"),
          actions: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.favorite,
                color: widget.pet.isFav ? Colors.red : Colors.white,
              ),
              onTap: () {
                setState(() {
                  widget.pet.isFav = !widget.pet.isFav;
                  Fluttertoast.showToast(
                    backgroundColor: Colors.black,
                    msg: widget.pet.isFav
                        ? "Added to favorite"
                        : "Deleted frome favorite",
                  );
                });
              },
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 8,),
          Container(
            height: 300,
            width: 400,
            child: Image.asset(
              "${widget.pet.imageUrl}",
              width: 200,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "   ID: ${widget.pet.id}",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
          ),
          Text(
            "   Name: ${widget.pet.name}",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              advice,
              style: TextStyle(fontSize: 22),
            ),
          ),
          Spacer(),
          Container(
              child: ElevatedButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => ConfirmAdopt(pet: widget.pet)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: Text(
                  "adopt",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              width: 410,
              height: 50,
              color: const Color.fromARGB(255, 229, 225, 224))
        ],
      ),
    );
  }
}
