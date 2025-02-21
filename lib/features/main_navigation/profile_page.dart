import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/persistent_tab.dart';
import 'package:hw_navigation/features/main_navigation/widgets/reply_list.dart';
import 'package:hw_navigation/features/main_navigation/widgets/thread_list.dart';
import 'package:hw_navigation/features/settings/privacy_screen.dart';
import 'package:hw_navigation/features/settings/setting_screen.dart';
import 'package:hw_navigation/router.dart';
import 'package:hw_navigation/utils.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {
  bool isSet = false;

  void _onSettingPressed() {
/*     Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SettingScreen(),
      ),
    ); */

    context.pushNamed(SettingScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(ref, context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size20,
        ),
        child: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                titleSpacing: 0,
                // backgroundColor: Colors.white,
                title: const Icon(
                  Icons.language,
                  size: Sizes.size32,
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      size: Sizes.size32,
                    ),
                  ),
                  IconButton(
                    onPressed: _onSettingPressed,
                    icon: const Icon(
                      Icons.short_text_sharp,
                      size: Sizes.size32,
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gaps.v14,
                            const Text(
                              "짱구구",
                              style: TextStyle(
                                fontSize: Sizes.size40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "jane_mobbin",
                                  style: TextStyle(
                                    fontSize: Sizes.size18,
                                  ),
                                ),
                                Gaps.h10,
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: Sizes.size10,
                                    vertical: Sizes.size5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "threads.net",
                                    style: TextStyle(
                                      color: isDark
                                          ? Colors.grey.shade800
                                          : Colors.grey.shade500,
                                      fontSize: Sizes.size16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                              ),
                              radius: Sizes.size36,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gaps.v10,
                    const Text(
                      "Plant enthusiast!",
                      style: TextStyle(
                        fontSize: Sizes.size20,
                      ),
                    ),
                    Gaps.v10,
                    Row(
                      children: [
                        const Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                              ),
                              radius: Sizes.size14,
                            ),
                            Positioned(
                              left: Sizes.size22,
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                                ),
                                radius: Sizes.size14,
                              ),
                            ),
                          ],
                        ),
                        Gaps.h32,
                        Text(
                          "2 followers",
                          style: TextStyle(
                            fontSize: Sizes.size18,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.size10,
                            horizontal: Sizes.size36,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.shade400, width: 1),
                          ),
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontSize: Sizes.size20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.size10,
                            horizontal: Sizes.size36,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.shade400, width: 1),
                          ),
                          child: const Text(
                            "Share Profile",
                            style: TextStyle(
                              fontSize: Sizes.size20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gaps.v20,
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTab(),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: const TabBarView(
                    children: [
                      ThreadList(),
                      ReplyList(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
