import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _private = false;

  void _onPrivateChanged(bool? newValue) {
    if (newValue == null) return;
    setState(() {
      _private = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Gaps.v10,
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                      ),
                      Gaps.h5,
                      Text(
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
            SwitchListTile.adaptive(
              activeTrackColor: Colors.black,
              activeColor: Colors.white,
              value: _private,
              onChanged: _onPrivateChanged,
              title: const Row(
                children: [
                  Icon(
                    Icons.lock_outline_rounded,
                    size: Sizes.size32,
                    color: Colors.black,
                  ),
                  Gaps.h5,
                  Text(
                    "  Priavacy",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.comment,
                size: Sizes.size32,
                color: Colors.black,
              ),
              title: Text(
                "Mentions",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.music_off_outlined,
                size: Sizes.size32,
                color: Colors.black,
              ),
              title: Text(
                "Muted",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.hide_source,
                size: Sizes.size32,
                color: Colors.black,
              ),
              title: Text(
                "Hidden Words",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.people_outline,
                size: Sizes.size32,
                color: Colors.black,
              ),
              title: Text(
                "Profiles you follow",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                "Other privacy settings",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              subtitle: Text(
                "Some settings, like restrict, apply to both Threads and Instagram and can be managed on Instagram",
                style: TextStyle(
                  fontSize: Sizes.size18,
                  color: Colors.grey.shade500,
                ),
              ),
              trailing: const Icon(
                Icons.ios_share_sharp,
                size: Sizes.size20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.block_outlined,
                size: Sizes.size32,
                color: Colors.black,
              ),
              title: Text(
                "Blocked profiles",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.ios_share_sharp,
                size: Sizes.size20,
              ),
            ),
            const ListTile(
              leading: FaIcon(
                FontAwesomeIcons.heartCircleXmark,
                size: Sizes.size32,
                color: Colors.black,
              ),
              title: Text(
                "Hide likes",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.ios_share_sharp,
                size: Sizes.size20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
