// ignore_for_file: file_names
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class SoilTesting extends StatelessWidget {
  SoilTesting({super.key});

  List<String> soilTypes = [
    'Alluvial',
    'Black',
    'Red',
    'Laterite',
    'Mountain',
    'Desert',
    'Mountain',
    'Desert',
    'Mountain',
    'Desert',
  ];

  List<String> soildescription = [
    'Alluvial soil is a soil type that is formed by the deposition of silt, sand, and gravel from rivers and streams. It is the most fertile soil type and is found in river deltas and floodplains.',
    'Black soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Red soil is a soil type that is formed from the weathering of granite and gneiss. It is found in the Deccan Plateau and is the second most fertile soil type in India.',
    'Laterite soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Mountain soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Desert soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Mountain soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Desert soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Mountain soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
    'Desert soil is a soil type that is formed from the weathering of basalt and gneiss. It is found in the Deccan Plateau and is the most fertile soil type in India.',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: new Icon(Icons.thermostat_sharp),
        title: const Text('Soil Type'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: new ListView.builder(
          itemCount: soilTypes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(soilTypes[index][0]),
              ),
              title: Text(soilTypes[index]),
              subtitle: Text(soildescription[index]),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.camera_enhance),
        label: const Text('Upload Image'),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(null),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(null),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
