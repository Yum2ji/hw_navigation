import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/sizes.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
        "Alarm",
        style: TextStyle(
          fontSize: Sizes.size48,
        ),
      );
  }
}