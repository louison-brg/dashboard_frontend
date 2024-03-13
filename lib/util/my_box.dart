import 'dart:ffi';

import 'package:dashboard/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0), // Ajouter un espace de 8 pixels autour du conteneur
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF333232),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
                'Info',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFFFF0000),
                ),),
          ),

        ),
      ),
    );
  }
}
