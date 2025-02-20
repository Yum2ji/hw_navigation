import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/alarm_page.dart';
import 'package:hw_navigation/features/main_navigation/home_page.dart';
import 'package:hw_navigation/features/main_navigation/profile_page.dart';
import 'package:hw_navigation/features/main_navigation/search_page.dart';
import 'package:hw_navigation/features/main_navigation/widgets/nav_page.dart';
import 'package:hw_navigation/features/main_navigation/write_page.dart';

class MainNavigationScreen extends StatefulWidget {
  static const String routeName = "mainNavigation";
  final String tab;
  const MainNavigationScreen({super.key, required this.tab});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final List<String> _tabs = [
    "home",
    "search",
    "video",
    "activity",
    "profile",
  ];

  late int _selectedIndex = _tabs.indexOf(widget.tab);

  void _onTap(int index) {
context.go("/${_tabs[index]}");
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onHomTap(int index){
     context.goNamed("home");
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _showBottomSheet() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => const WritePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const HomePage(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const SearchPage(),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const WritePage(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const AlarmPage(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const ProfilePage(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        //  color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size1,
            vertical: Sizes.size8,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavPage(
                icon: FontAwesomeIcons.house,
                isSelected: _selectedIndex == 0,
                onTap: () => _onHomTap(0),
              ),
              NavPage(
                icon: FontAwesomeIcons.magnifyingGlass,
                isSelected: _selectedIndex == 1,
                onTap: () => _onTap(1),
              ),
              NavPage(
                icon: FontAwesomeIcons.penToSquare,
                isSelected: _selectedIndex == 2,
                onTap: _showBottomSheet,
              ),
              NavPage(
                icon: FontAwesomeIcons.heart,
                isSelected: _selectedIndex == 3,
                onTap: () => _onTap(3),
              ),
              NavPage(
                icon: FontAwesomeIcons.user,
                isSelected: _selectedIndex == 4,
                onTap: () => _onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
