import 'package:flutter/material.dart';

class PropertyDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  final String location;

  const PropertyDetailsPage({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
                  children: [

                    Image.asset(
                      image,
                      width: double.infinity,
                      height: 450,
                      fit: BoxFit.cover,
                    ),

                    Container(
                      height: 450,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                                                                            colors: [
                          Colors.transparent,
                          Color(0xCC000000),
                        
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      top: 50,
                      left: 20,
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    price,
                    style: const TextStyle(
                      color: Color(0xFF22C55E),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),

                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [

                          Column(
                            children: [
                              Icon(Icons.bed, color: Colors.white),
                              SizedBox(height: 8),
                              Text(
                                "4 Beds",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Icon(Icons.bathtub, color: Colors.white),
                              SizedBox(height: 8),
                              Text(
                                "3 Baths",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Icon(Icons.square_foot, color: Colors.white),
                              SizedBox(height: 8),
                              Text(
                                "2500 sqft",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                  const SizedBox(height: 30),

                  const Text(
                    "Property Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "A premium property located in one of the most desirable locations. Featuring modern architecture, spacious interiors and excellent connectivity.",
                    style: TextStyle(
                      color: Colors.white70,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Amenities",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [

                      Chip(
                        label: Text("Swimming Pool"),
                        avatar: Icon(Icons.pool),
                      ),

                      Chip(
                        label: Text("Gym"),
                        avatar: Icon(Icons.fitness_center),
                      ),

                      Chip(
                        label: Text("Parking"),
                        avatar: Icon(Icons.local_parking),
                      ),

                      Chip(
                        label: Text("24/7 Security"),
                        avatar: Icon(Icons.security),
                      ),

                      Chip(
                        label: Text("Garden"),
                        avatar: Icon(Icons.park),
                      ),

                      Chip(
                        label: Text("Club House"),
                        avatar: Icon(Icons.home_work),
                      ),

                    ],
                  ),

                  SizedBox(height: 40),

                  Container(
  padding: const EdgeInsets.all(25),
  decoration: BoxDecoration(
    color: Colors.white10,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: Colors.white24,
    ),
  ),
  child: Column(
    children: [

      const CircleAvatar(
        radius: 35,
        child: Icon(Icons.person, size: 35),
      ),

      const SizedBox(height: 15),

      const Text(
        "Rahul Sharma",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      const SizedBox(height: 5),

      const Text(
        "Senior Property Consultant",
        style: TextStyle(
          color: Colors.white70,
        ),
      ),

      const SizedBox(height: 20),

      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(18),
            child: Text("Contact Agent"),
          ),
        ),
      ),
    ],
  ),
),

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}