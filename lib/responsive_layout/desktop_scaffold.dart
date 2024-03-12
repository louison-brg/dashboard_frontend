import 'package:dashboard/constant.dart';
import 'package:dashboard/util/my_box.dart';
import 'package:dashboard/util/my_graph.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body : Row(
        children: [
          //open menu on the side
          myDrawer,
          //Rest of the DashBoard
          Expanded(
              child: Column(
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
                          return const MyBox();
                        },
                      ),
                    ),
                  ),
                  //Graph below it
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index){
                        return const MyGraph();
                      },
                    ),
                  ),
                ],
              ))
      ],
      ),
    );
  }
}
