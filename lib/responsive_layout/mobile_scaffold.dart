import 'package:dashboard/constant.dart';
import 'package:dashboard/util/my_box.dart';
import 'package:dashboard/util/my_graph.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
        //3 box on the top 
        AspectRatio(
          aspectRatio : 3,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
              itemBuilder: (context, index) {
              return MyBox();
              },
            ),
          ),
        ),
          //Graph below it
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
                return MyGraph();
              },
            ),
          ),
       ],
      ),
    );
  }
}

