import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/sizes.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
        "Write",
        style: TextStyle(
          fontSize: Sizes.size48,
        ),
      );
  }
}