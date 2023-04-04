import 'package:cropvana/components/CoursesItems.dart';
import 'package:flutter/material.dart';

class AidPage extends StatelessWidget {
  const AidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'News for farmer',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 16.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))
                  ),
                ),
                const SizedBox(height: 20.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryButton('All', true),
                      _buildCategoryButton('Govt. Policies', false),
                      _buildCategoryButton('Fertilizers', false),
                      _buildCategoryButton('Market', false),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0,),
                SingleChildScrollView(
                  child: Column(
                  children: [
                    _buildNewsCard(
                      'https://cfstatic.give.do/00ae3035-de8b-44ed-8102-ce1d20a66c22.jpg',
                      'Universal Versatile Society (UVS)',
                      'Through our project, we are intending to make 250 families self-sustained',
                    ),
                    _buildNewsCard(
                      'https://cfstatic.give.do/e40cb30b-956f-423a-a1b2-dc9db25e9347.jpg',
                      'Dilasa Sanstha',
                      'The NGO is sponsoring farmers to learn low-cost farming methods.',
                    ),
                    _buildNewsCard(
                      'https://cfstatic.give.do/efbfa5a3-78d9-43f2-8e58-86edc14f204e.jpg',
                      'Marathwada Navnirman Lokayat (MANAVLOK)',
                      'The organization has developed multi yearly cropping pattern which is helpful for facing drought situation & for increasing income.',
                    ),
                  ],
                  ),
                ),
              ],  
            ),
          ),
        ),
    ),
    );
  }
  Widget _buildNewsCard(String imageUrl, String title, String description) {
  return Container(
    padding: const EdgeInsets.all(16.0),
    margin: const EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          offset: const Offset(0.0, 3.0),
          blurRadius: 6.0,
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            imageUrl,
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _buildCategoryButton(String label, bool isActive) {
  return Container(
    margin: const EdgeInsets.only(right: 16.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)
          ),
        ),
        backgroundColor: isActive ? MaterialStateProperty.all<Color>(Colors.blue) : MaterialStateProperty.all<Color>(Colors.grey.shade300),
        foregroundColor: isActive ? MaterialStateProperty.all<Color>(Colors.white) : MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0)),
      ),
      child: Text(label),
    ),
  );
}

}
