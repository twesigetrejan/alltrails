import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          final place = destinations[index];

          return SizedBox(
            height: 220,
            child: Card(
              margin: const EdgeInsets.all(12),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Background image
                  Image.asset(place.picture, fit: BoxFit.cover),

                  // Dark overlay for readability
                  Container(color: Colors.black.withOpacity(0.3)),

                  // Text
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "⭐ ${place.rating}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DestinationModel {
  final String id;
  final String name;
  final String picture;
  final double rating;

  DestinationModel({
    required this.id,
    required this.name,
    required this.picture,
    required this.rating,
  });
}

final List<DestinationModel> destinations = [
  DestinationModel(
    id: '0',
    name: "Murchison Falls",
    picture: "assets/images/destinations/elizabeth.jpg",
    rating: 4.2,
  ),
  DestinationModel(
    id: '1',
    name: "Bwindi Forest",
    picture: "assets/images/destinations/bwindi.jpg",
    rating: 4.7,
  ),
  DestinationModel(
    id: '2',
    name: "Lake Bunyonyi",
    picture: "assets/images/destinations/bunyoyi.jpg",
    rating: 4.5,
  ),
  DestinationModel(
    id: '3',
    name: "Entebbe",
    picture: "assets/images/destinations/entebee.jpg",
    rating: 4.0,
  ),
  DestinationModel(
    id: '4',
    name: "Elizabeth",
    picture: "assets/images/destinations/elizabeth2.jpg",
    rating: 4.0,
  ),
  DestinationModel(
    id: '5',
    name: "Fort Portal",
    picture: "assets/images/destinations/murchison2.jpg",
    rating: 4.0,
  ),
  DestinationModel(
    id: '6',
    name: "Kauga",
    picture: "assets/images/destinations/murchison_falls.jpg",
    rating: 4.0,
  ),
];
