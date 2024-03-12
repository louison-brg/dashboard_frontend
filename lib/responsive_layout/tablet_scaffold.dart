import 'package:dashboard/constant.dart';
import 'package:dashboard/util/my_box.dart';
import 'package:dashboard/util/my_graph.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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
                  return const MyBox();
                },
              ),
            ),
          ),
          //Graph below it
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
                return const MyGraph();
              },
            ),
          ),
        ],
      ),
    );
  }
}
