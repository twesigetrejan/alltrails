import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscorState();
}

class _DiscorState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Discover section"));
  }
}

class DiscoveriesModel {
  final String id;
  final String name;
  final String picture;
  final double rating;

  DiscoveriesModel({
    required this.id,
    required this.name,
    required this.picture,
    required this.rating,
  });
}

List<DiscoveriesModel> discoveries = [
  DiscoveriesModel(id: '1', name: "name", picture: "picture", rating: 4),
];
