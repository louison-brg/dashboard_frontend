import 'package:dashboard/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: const EdgeInsets.all(20.0),
      child: const Text('Info'),
      alignment: Alignment.center,
    );
  }
}
