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
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                    _buildNewsCard(
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                    _buildNewsCard(
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                    _buildNewsCard(
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                    _buildNewsCard(
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                    _buildNewsCard(
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                    _buildNewsCard(
                    'https://picsum.photos/200',
                    'Lorem ipsum dolor sit amet',
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
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
        backgroundColor: isActive ? MaterialStateProperty.all<Color>(Colors.blue) : MaterialStateProperty.all<Color>(Colors.grey.shade300),
        foregroundColor: isActive ? MaterialStateProperty.all<Color>(Colors.white) : MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0)),
      ),
      child: Text(label),
    ),
  );
}

}
