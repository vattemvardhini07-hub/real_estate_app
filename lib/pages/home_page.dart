import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/properties_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1120),
      
      body: SingleChildScrollView(
        child: Center(
         child: Padding(
            padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          const Text(
                            "LUXE ESTATES",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child:Row(
                            children: [

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PropertiesPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Properties",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),

                              const SizedBox(width: 20),

                              const Text(
                                "About",
                                style: TextStyle(color: Colors.white),
                              ),

                              const SizedBox(width: 20),

                              const Text(
                                "Contact",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),

    Container(
      width: double.infinity,
      padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF111827),
                      Color(0xFF1E293B),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.home_work_rounded,
                      size: 80,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 20),

                    const Text(
                    "Luxury Living\nStarts Here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 52,
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                    const SizedBox(height: 20),

                    const Text(
                        "Discover premium villas, apartments and plots across India.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: 320,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search by city, locality...",
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                    ),
                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Buy"),
                        ),

                        const SizedBox(width: 10),

                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Rented"),
                        ),

                        const SizedBox(width: 10),

                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sell"),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [

                        Column(
                          children: [
                            Text(
                              "500+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Properties",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              "200+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Clients",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              "50+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Agents",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),

                      ],
                    ),




                  ],
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                "Popular Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/villa.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                      SizedBox(height: 8),
                      Text("Villa"),
                    ],
                  ),

                  Column(
                    children:[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/apartments.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ), 
                      SizedBox(height: 8),
                      Text("Apartment"),
                    ],
                  ),

                  Column(
                    children:[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/plots.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Plot"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 40),
              const Text(
                "Featured Properties",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    // Villa Card
                    SizedBox(
                      width: 320,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/images/villa.jpg',
                                  height: 200,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                                                                        const Text(
                                "Luxury Villa",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                        const Text("Hyderabad"),
                              const SizedBox(height: 5),
                              const Text(
                                "₹1.2 Cr",
                                style: TextStyle(
                                  color: Color(0xFF22C55E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Apartment Card
                    SizedBox(
                      width: 320,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/images/apartments.jpg',
                                  height: 200,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Modern Apartment",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
    
                                  color: Colors.white,
                                ),
                              ),
                              const Text("Gachibowli"),
                              const SizedBox(height: 5),
                              const Text(
                                "₹80 Lakh",
                                style: TextStyle(
                                  color: Color(0xFF22C55E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Plot Card
                    SizedBox(
                      width: 320,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/images/plots.jpg',
                                  height: 200,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Residential Plot",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              const Text("Shamshabad"),
                              const SizedBox(height: 5),
                              const Text(
                                "₹35 Lakh",
                                style: TextStyle(
                                  color: Color(0xFF22C55E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 80),

                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 40,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1E293B),
                        Color(0xFF111827),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [

                      const Text(
                        "Find Your Dream Property Today",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Explore premium villas, apartments and plots across the most desirable locations.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),

                      const SizedBox(height: 30),

                        ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PropertiesPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 18,
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: const Text("Explore Properties"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 60),



              
            ],
          ),
        ),
      ),
    ),
  );
}
}