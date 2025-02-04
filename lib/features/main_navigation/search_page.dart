import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/sizes.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
        "Search",
        style: TextStyle(
          fontSize: Sizes.size48,
        ),
      );
  }
}