import 'package:cropvana/components/CoursesItems.dart';
import 'package:cropvana/components/appdrawer.dart';
import 'package:cropvana/components/homecarousle.dart';
import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cropvana",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWithDotsPage(imgList: const [
              'assets/images/news-1.jpg',
              'assets/images/2.png',
              'assets/images/3.png',
            ]),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text(
                "Crops Market Demand",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                CourseItem(
                  image: "assets/images/wheat.png",
                  title: 'Wheat',
                  description: 'Increased by: 7%',
                ),
                CourseItem(
                  image: "assets/images/rice.png",
                  title: 'Rice',
                  description: 'Increased by: 2.3%',
                ),
                CourseItem(
                  image: "assets/images/jowar.png",
                  title: 'Jowar',
                  description: 'Decreased by: 0.8%',
                ),
                CourseItem(
                  image: "assets/images/jowar.png",
                  title: 'Jowar',
                  description: 'Decreased by: 0.8%',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        //child: new Icon(Icons.camera_enhance),
        icon: const Icon(Icons.camera_enhance),
        label: const Text('Find Best Crop For Me'),
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
