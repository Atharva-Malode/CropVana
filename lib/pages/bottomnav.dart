import 'package:cropvana/pages/aidpage.dart';
import 'package:cropvana/pages/homapage.dart';
import 'package:cropvana/pages/profilepage.dart';
import 'package:cropvana/pages/soiltestingpage.dart';
import 'package:cropvana/pages/weatherpage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedPage = 0;
  final pages = [
    const HomePage(),
    const AidPage(),
    const WeatherPage(),
    SoilTesting(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: /*BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          fixedColor: Colors.green[900],
          unselectedItemColor: Colors.grey,
          onTap: (position) {
            setState(() {
              selectedPage = position;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee), label: "Aid"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cloud_outlined), label: "Weather"),
            BottomNavigationBarItem(
                icon: Icon(Icons.thermostat_sharp), label: "Soil Testing"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),*/
          Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.green,
          // borderRadius: BorderRadius.all(Radius.circular(10)),
          // shape: BoxShape.circle,
        ),
        child: GNav(
          onTabChange: (position) {
            setState(() {
              selectedPage = position;
            });
          },
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          activeColor: Colors.white,
          backgroundColor: Colors.green,
          color: Colors.lime,
          tabBackgroundColor: Colors.green.shade300,
          gap: 5,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            const GButton(
              icon: Icons.home,
              //text: 'Home',
            ),
            const GButton(
              icon: Icons.eco,
              //text: 'Aid',
            ),
            const GButton(
              icon: Icons.cloud_outlined,
              //text:'Weather',
            ),
            const GButton(
              icon: Icons.thermostat_sharp,
              //text: 'Soil Testing'
            ),
            const GButton(
              icon: Icons.person,
              //text: 'Profile'
            ),
          ],
        ),
      ),
    );
  }
}
