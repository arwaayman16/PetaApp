import 'package:flutter/material.dart';
import 'package:sec12/data/models/pet.dart';

class AdoptionSuccees extends StatelessWidget {
  const AdoptionSuccees({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(pet.imageUrl,height: 200,width: 300,fit: BoxFit.cover,),
            Text(
              '${pet.name} Adopted Successfully',
              style:  TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK',style: TextStyle(
                          color: Colors.white
                        )),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            )
          ],
        ),
      ),
    );
  }
}
