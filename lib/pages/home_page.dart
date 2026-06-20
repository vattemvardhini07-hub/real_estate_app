import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/properties_page.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'consultation_page.dart';


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

                          Row(
                        children: const [
                          Icon(
                            Icons.home_work_rounded,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "LUXE ESTATES",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),

                      Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.white24,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                          ),
                        ],
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
                                  style: TextStyle(color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,),
                                ),
                              ),

                              const SizedBox(width: 20),

                                                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutPage(),
                            ),
                          );
                        },
                          child: const Text(                 
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                        
                      ),

                              const SizedBox(width: 20),

                             GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ContactPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Contact",
                                  style: TextStyle(color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,),
                                ),
                              ),
                              const SizedBox(width: 20),

                      ElevatedButton(
                        onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConsultationPage(),
                          ),
                        );
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD4AF37),
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Get Consultation",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                            ],
                          ),
                          ),
                        ],
                      ),
                    ),

               // hero section

               Container(
                height: 700,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/homeimage.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black.withOpacity(0.55),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Text(
                          "Find Your Dream\nLuxury Property",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 58,
                            fontWeight: FontWeight.bold,
                            height: 1.1,
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          "Exclusive Villas • Premium Apartments • Investment Opportunities",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 22,
                          ),
                        ),

                        const SizedBox(height: 40),

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
                            backgroundColor: const Color(0xFFD4AF37),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 22,
                            ),
                          ),
                          child: const Text(
                            "Explore Properties",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                      child:Card(
                        color: const Color(0xFF111827),
                        elevation: 10,
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
                              
                              const SizedBox(height: 10),

                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.bed, color: Colors.white70, size: 18),
                                  SizedBox(width: 5),
                                  Text(
                                    "4 Beds",
                                    style: TextStyle(color: Colors.white70),
                                  ),

                                  SizedBox(width: 15),

                                  Icon(Icons.bathtub, color: Colors.white70, size: 18),
                                  SizedBox(width: 5),

                                  Text(
                                    "3 Baths",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "₹1.2 Cr",
                                style: TextStyle(
                                  color:Color(0xFFD4AF37),
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
                      color: const Color(0xFF111827),
                      elevation: 10,
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
                              
                              const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bed, color: Colors.white70, size: 18),
                            SizedBox(width: 5),
                            Text(
                              "3 Beds",
                              style: TextStyle(color: Colors.white70),
                            ),

                            SizedBox(width: 15),

                            Icon(Icons.bathtub, color: Colors.white70, size: 18),
                            SizedBox(width: 5),

                            Text(
                              "3 Baths",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                               const SizedBox(height: 10),
                              const Text(
                                "₹80 Lakh",
                                style: TextStyle(
                                  color: Color(0xFFD4AF37),
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
                      color: const Color(0xFF111827),
                      elevation: 10,
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
                                  color:Color(0xFFD4AF37),
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

const Text(
  "Our Services",
  style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),

const SizedBox(height: 40),

Wrap(
  spacing: 20,
  runSpacing: 20,
  alignment: WrapAlignment.center,
  children: [

    serviceCard(
      Icons.home,
      "Property Buying",
      "Find your perfect dream property with expert guidance.",
    ),

    serviceCard(
      Icons.sell,
      "Property Selling",
      "Sell your property faster with maximum value.",
    ),

    serviceCard(
      Icons.key,
      "Luxury Rentals",
      "Premium rental properties in prime locations.",
    ),

    serviceCard(
      Icons.trending_up,
      "Investment Consulting",
      "Smart real estate investment strategies.",
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
                const SizedBox(height: 80),

                

const Text(
  "Why Choose Us",
  style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),

const SizedBox(height: 40),

Wrap(
  spacing: 20,
  runSpacing: 20,
  alignment: WrapAlignment.center,
  children: [

    featureCard(
      Icons.verified,
      "Trusted",
      "Verified properties and transparent transactions.",
    ),

    featureCard(
      Icons.support_agent,
      "Expert Support",
      "Professional consultants available anytime.",
    ),

    featureCard(
      Icons.trending_up,
      "Best Investment",
      "Properties with strong growth potential.",
    ),
  ],
),

const SizedBox(height: 80),

const Text(
  "What Our Clients Say",
  style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
),

const SizedBox(height: 40),

Wrap(
  spacing: 20,
  runSpacing: 20,
  alignment: WrapAlignment.center,
  children: [

    testimonialCard(
      "Priya Reddy",
      "Amazing experience! Found my dream villa within a week.",
    ),

    testimonialCard(
      "Rahul Verma",
      "Professional team and transparent process throughout.",
    ),

    testimonialCard(
      "Ananya Sharma",
      "Best real estate platform I've worked with.",
    ),
  ],
),




Container(
  width: double.infinity,
  padding: const EdgeInsets.all(40),
  color: Colors.black26,
  child: const Column(
    children: [

      Text(
        "LUXE ESTATES",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 10),

      Text(
        "Luxury Living Starts Here",
      style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.2,
    ),
      ),

      SizedBox(height: 20),

      Text(
        "© 2026 Luxe Estates. All Rights Reserved.",
        style: TextStyle(
          color: Colors.white54,
        ),
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

Widget featureCard(
  IconData icon,
  String title,
  String description,
) {
  return Container(
    width: 300,
    padding: const EdgeInsets.all(25),
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.05),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white24),
    ),
    child: Column(
      children: [
        Icon(
          icon,
          size: 50,
          color: const Color(0xFF22C55E),
        ),

        const SizedBox(height: 15),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    ),
  );
}
Widget testimonialCard(
  String name,
  String review,
) {
  return Container(
    width: 320,
    padding: const EdgeInsets.all(25),
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.05),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white24),
    ),
    child: Column(
      children: [

        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 40,
        ),

        const SizedBox(height: 15),

        Text(
          review,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            height: 1.6,
          ),
        ),

        const SizedBox(height: 15),

        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
Widget serviceCard(
  IconData icon,
  String title,
  String description,
) {
  return Container(
    width: 280,
    padding: const EdgeInsets.all(25),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.05),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white24),
    ),
    child: Column(
      children: [

        Icon(
          icon,
          size: 50,
          color: const Color(0xFFD4AF37),
        ),

        const SizedBox(height: 15),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            height: 1.5,
          ),
        ),
      ],
    ),
  );
}
}