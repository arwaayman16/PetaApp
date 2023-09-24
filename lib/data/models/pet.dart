import 'package:flutter/material.dart';

class Pet {
  final String name, imageUrl;
  final int id;
  bool isFav;
  Pet(this.id, this.imageUrl, this.name ,{this.isFav=false});
}
