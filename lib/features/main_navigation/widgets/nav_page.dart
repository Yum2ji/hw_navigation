import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/utils.dart';


class NavPage extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  Function onTap;
  NavPage({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          //    color: Colors.red,
          child: Center(
            child: AnimatedOpacity(
              opacity: isSelected ? 1 : 0.6,
              duration: const Duration(milliseconds: 400),
              child: FaIcon(
                icon,
                color: isSelected ?  isDark? Colors.white: Colors.black : Colors.grey.shade500,
                size: Sizes.size24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
