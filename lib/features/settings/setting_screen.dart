import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/darkmodes/view_models/playback_config_vm.dart';
import 'package:hw_navigation/features/settings/privacy_screen.dart';
import 'package:hw_navigation/utils.dart';

class SettingScreen extends StatefulWidget {
  static String routeName ="settings";
  static const routeURL ="settings";
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isLogOut = false;

  void _onPrivacy() {
/*     Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PrivacyScreen(),
      ),
    ); */
    context.pushNamed(PrivacyScreen.routeName);
  }

  void _onLogOut() {
    setState(() {
      isLogOut = !isLogOut;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context) ;
   
    return SafeArea(
      child: Scaffold(
      //  backgroundColor: Colors.white,
        body: Column(
          children: [
            Gaps.v10,
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: isDark? Colors.white : Colors.grey.shade800,
                      ),
                      Gaps.h5,
                      const Text(
                        "Back",
                        style: TextStyle(
                          fontSize: Sizes.size22,
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.size24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            Gaps.v10,
            const Divider(),
             ListTile(
              leading: Icon(
                Icons.person_add_outlined,
                size: Sizes.size32,
                color:  isDark? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Follow and invite friends",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                Icons.notifications,
                size: Sizes.size32,
                color:  isDark? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ),
            GestureDetector(
              onTap: _onPrivacy,
              child:  ListTile(
                leading: Icon(
                  Icons.lock,
                  size: Sizes.size32,
                  color:  isDark? Colors.white : Colors.grey.shade800,
                ),
                title: const Text(
                  "Priavacy",
                  style: TextStyle(
                    fontSize: Sizes.size20,
                  ),
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                Icons.person_outline,
                size: Sizes.size32,
                color:  isDark? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Account",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                Icons.live_help_outlined,
                size: Sizes.size32,
                color:  isDark? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Help",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                Icons.info_outline,
                size: Sizes.size32,
                color:  isDark? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "About",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const Text(
                      "Log out",
                      style: TextStyle(
                        fontSize: Sizes.size20,
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog.adaptive(
                          title: const Text("Are you sure?"),
                          content: const Text("Please dont' go"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text(
                                "No",
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                _onLogOut;
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const CircularProgressIndicator.adaptive(
                    strokeWidth: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
