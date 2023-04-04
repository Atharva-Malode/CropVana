// ignore_for_file: file_names
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class SoilTesting extends StatelessWidget {
  SoilTesting({super.key});

  List<String> soilTypes = [
    'Alluvial Soil',
    'Black Soil',
    'Red soil',
    'Laterite soil',
    'peat soil',
    'clay soil',
    'Loamy Soil',
    'Sandy Soil',
    'new soil',
    'Desert',
  ];

  List<String> soildescription = [
    'Rice, wheat, sugarcane, cotton, jute, potato',
    'Cotton, soybean, sugarcane, groundnut, wheat, jowar, bajra, ragi, moong, urad, chana',
    'Tea, coffee, cotton, sugarcane, jowar, bajra, tobacco, tomato, okra, brinjal',
    'Cashew, rubber, coconut, cassava, sweet potato, pineapple, jackfruit',
    'Potatoes, lettuce, spinach, blueberries, cranberries, rhododendrons',
    'Beans, peas, leafy greens, corn, wheat, oats, and barley.',
    'tomatoes, peppers, squash, apples, grapes, strawberries, wheat, corn, soybeans',
    'carrots, radishes, sweet potatoes, peanuts, asparagus, watermelons',
    'Cabbage, cauliflower, broccoli, lettuce, spinach, kale, collards, turnips',
    'Cactus, cacti, agave, aloe, al',
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              leading: CircleAvatar(
                child: Text(soilTypes[index][0]),
              ),
              title: Text(soilTypes[index]),
              subtitle: Text(soildescription[index]),
              contentPadding: EdgeInsets.all(
                20.0,
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        //child: new Icon(Icons.camera_enhance),
        icon: const Icon(Icons.camera_enhance),
        label: const Text('Check My Soil Type'),
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
