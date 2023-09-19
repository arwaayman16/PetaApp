import 'package:flutter/material.dart';
import 'package:sec12/data/models/pet.dart';
import 'package:sec12/presentation/pages/widget/Adoption_succees.dart';

class ConfirmAdopt extends StatelessWidget {
  const ConfirmAdopt({super.key, required this.pet});
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Are you sure you want to adopt ${pet.name}?',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      showDialog(
                          context: context,
                          builder: (context) => AdoptionSuccees(
                                pet: pet,
                              ));
                    },
                    child: const Text('Yes',style: TextStyle(
                          color: Colors.white,
                        ))),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                    onPressed: () => Navigator.pop(context),
                    child: const Text('No',
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              )
            ],
          )
        ],
      ),
    ));
  }
}
