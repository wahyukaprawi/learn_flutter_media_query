import 'dart:math';

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(title: const Text('Learn Media Query'));
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final bodyHeight =
        mediaQueryHeight - myAppBar.preferredSize.height - statusBarHeight;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: mediaQueryWidth,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    height: bodyHeight * 0.5,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              height: 70,
                              color: Color.fromARGB(254, Random().nextInt(156),
                                  Random().nextInt(156), Random().nextInt(156)),
                            ),
                          );
                        }),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: mediaQueryWidth,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 90,
                            color: Color.fromARGB(255, Random().nextInt(164),
                                Random().nextInt(164), Random().nextInt(164)),
                          );
                        }),
                  ),
                ],
              ),
      ),
    );
  }
}
