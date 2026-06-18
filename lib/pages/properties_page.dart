import 'package:flutter/material.dart';
import 'property_details_page.dart';


class PropertiesPage extends StatelessWidget {
  const PropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        elevation: 0,
        title: const Text(
          "Properties",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Explore Properties",
              style: TextStyle(
                fontSize: 42,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: "Search location...",
                filled: true,
                fillColor: Colors.white10,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Wrap(
              spacing: 10,
              children: [
                Chip(label: Text("All")),
                Chip(label: Text("Villa")),
                Chip(label: Text("Apartment")),
                Chip(label: Text("Plot")),
              ],
            ),

            const SizedBox(height: 40),

            Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                propertyCard(
                  context,
                  'assets/images/villa2.jpg',
                  "Luxury Villa",
                  "Hyderabad",
                  "₹1.2 Cr",
                ),
                propertyCard(
                  context,
                  'assets/images/apart2.jpg',
                  "Modern Apartment",
                  "Gachibowli",
                  "₹80 Lakh",
                ),
                propertyCard(
                  context,
                  'assets/images/plot2.jpg',
                  "Residential Plot",
                  "Shamshabad",
                  "₹35 Lakh",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget propertyCard(
      BuildContext context,
      String imagePath,
      String title,
      String location,
      String price,
      ) {
  return MouseRegion(
  cursor: SystemMouseCursors.click,
  child: GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PropertyDetailsPage(
          title: title,
          image: imagePath,
          price: price,
          location: location,
        ),
      ),
    );
  },

  child: Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
  color: Colors.white.withValues(alpha: 0.05),
  borderRadius: BorderRadius.circular(25),
  border: Border.all(
    color: Colors.white24,
    width: 1,
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withValues(alpha:0.2),
      blurRadius: 20,
      spreadRadius: 2,
    ),
  ],
),
      child: Column(
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imagePath,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            location,
            style: const TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 10),

          Text(
            price,
            style: const TextStyle(
              color: Color(0xFF22C55E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
  ),
  ),
    );
  }
}