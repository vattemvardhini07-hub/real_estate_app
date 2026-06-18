import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1120),
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "About Luxe Estates",
              style: TextStyle(
                fontSize: 42,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Luxe Estates is a trusted real estate platform helping buyers, sellers and investors discover exceptional properties across India. Our mission is to make real estate simple, transparent and rewarding.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                height: 1.7,
              ),
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Column(
                  children: const [
                    Icon(
                      Icons.home_work,
                      color: Color(0xFF22C55E),
                      size: 40,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "500+",
                      style: TextStyle(
                        color: Color(0xFF22C55E),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Properties",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                Column(
                  children: const [
                    Icon(
                      Icons.people,
                      color: Color(0xFF22C55E),
                      size: 40,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "1000+",
                      style: TextStyle(
                        color: Color(0xFF22C55E),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Clients",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                Column(
                  children: const [
                    Icon(
                      Icons.workspace_premium,
                      color: Color(0xFF22C55E),
                      size: 40,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "10+",
                      style: TextStyle(
                        color: Color(0xFF22C55E),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Years",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            
            const SizedBox(height: 60),

            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Our mission is to make property buying and selling simple, transparent and rewarding through modern technology and expert guidance.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  height: 1.8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}