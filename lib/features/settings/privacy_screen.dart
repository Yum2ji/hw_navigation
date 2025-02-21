import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/darkmodes/models/playback_config_model.dart';
import 'package:hw_navigation/features/darkmodes/view_models/playback_config_vm.dart';
import 'package:hw_navigation/main.dart';
import 'package:hw_navigation/utils.dart';
import 'package:provider/provider.dart';

class PrivacyScreen extends ConsumerStatefulWidget {
  static String routeName = "privacy";
  static const routeURL = "privacy";
  const PrivacyScreen({super.key});

  @override
  PrivacyScreenState createState() => PrivacyScreenState();
}

class PrivacyScreenState extends ConsumerState<PrivacyScreen> {
  bool _private = false;

  void _onPrivateChanged(bool? newValue) {
    if (newValue == null) return;
    setState(() {
      _private = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(ref, context);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: Column(
          children: [
            Gaps.v10,
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: isDark ? Colors.white : Colors.grey.shade800,
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
            SwitchListTile.adaptive(
              activeTrackColor: Colors.black,
              activeColor: Colors.white,
              value: _private,
              onChanged: _onPrivateChanged,
              title: Row(
                children: [
                  Icon(
                    Icons.lock_outline_rounded,
                    size: Sizes.size32,
                    color: isDark ? Colors.white : Colors.grey.shade800,
                  ),
                  Gaps.h5,
                  const Text(
                    "  Priavacy",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.comment,
                size: Sizes.size32,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Mentions",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.music_off_outlined,
                size: Sizes.size32,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Muted",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
            ),
            SwitchListTile.adaptive(
              activeTrackColor: Colors.black,
              activeColor: Colors.white,
              value: ref.watch(playbackConfigProvider).darkmode,
              //context.watch<PlaybackConfigViewModel>().darkmode,
              onChanged: (value) =>
                  ref.read(playbackConfigProvider.notifier).setDarkMode(value),
              // context.read<PlaybackConfigViewModel>().setDarkmode(value),
              title: Row(
                children: [
                  Icon(
                    Icons.dark_mode,
                    size: Sizes.size32,
                    color: isDark ? Colors.white : Colors.grey.shade800,
                  ),
                  Gaps.h5,
                  const Text(
                    "  Darkmode",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.hide_source,
                size: Sizes.size32,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Hidden Words",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people_outline,
                size: Sizes.size32,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Profiles you follow",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.size20,
                color: isDark ? Colors.white : Colors.grey.shade800,
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
              trailing: Icon(
                Icons.ios_share_sharp,
                size: Sizes.size20,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.block_outlined,
                size: Sizes.size32,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Blocked profiles",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.ios_share_sharp,
                size: Sizes.size20,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.heartCircleXmark,
                size: Sizes.size32,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
              title: const Text(
                "Hide likes",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              trailing: Icon(
                Icons.ios_share_sharp,
                size: Sizes.size20,
                color: isDark ? Colors.white : Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
