import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dream Homes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
         child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF1565C0),
                      Color(0xFF42A5F5),
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
                      "Find Your Dream Property",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Buy, Rent and Sell Properties Easily",
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
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.villa),
                      ),
                      SizedBox(height: 8),
                      Text("Villa"),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.apartment),
                      ),
                      SizedBox(height: 8),
                      Text("Apartment"),
                    ],
                  ),

                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.landscape),
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

              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [

                      Icon(
                        Icons.home,
                        size: 60,
                        color: Colors.blue,
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Luxury Villa",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text("Hyderabad"),

                      SizedBox(height: 10),

                      Text(
                        "₹1.2 Cr",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}