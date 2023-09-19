import 'package:flutter/material.dart';
import 'package:sec12/data/models/pet.dart';
import 'package:sec12/presentation/pages/pet_info_page.dart';

class PetGrid extends StatelessWidget {
  const PetGrid({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => petInfo(
                      pet: pet,
                    )));
      },
      child: SizedBox(
          height: 200,
          
          child: Padding(
            padding: EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: GridTile(
                  footer: Container(
                      height: 50,
                      color: Color.fromARGB(255, 77, 43, 27).withOpacity(.5),
                      child: Text(
                        "${pet.name}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                  child: Image.asset(
                    "${pet.imageUrl}",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
