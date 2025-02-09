import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/alarm_content.dart';

final tabs = [
  "All",
  "Replies",
  "Mentions",
  "Sounds",
  "LIVE",
  "Shopping",
  "Brands",
];

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  String _selected = "All";

  void _onTabBarTap(String val) {
    setState(() {
      _selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: Sizes.size24,
          left: Sizes.size20,
          right: Sizes.size20,
        ),
        child: DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              backgroundColor: Colors.white,
              title: const Text(
                textAlign: TextAlign.start,
                "Activity",
                style: TextStyle(
                  fontSize: Sizes.size36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              bottom: TabBar(
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size5,
                ),
                dividerColor: Colors.transparent,
                onTap: (index) => _onTabBarTap(tabs[index]),
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                tabs: [
                  for (var tab in tabs)
                    Tab(
                      iconMargin: EdgeInsets.zero,
                      child: Container(
                        padding: EdgeInsets.zero,
                        width: width * 0.25,
                        height: Sizes.size56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: tab == _selected
                                ? Colors.black
                                : Colors.grey.shade400, // 선택된 탭에만 검은색 테두리
                            width: 1, // 테두리 두께
                          ),
                          color: tab == _selected ? Colors.black : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            tab,
                            style: const TextStyle(
                              fontSize: Sizes.size18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                ],
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.size16,
                ),
                indicatorColor: Colors.transparent, // 밑줄을 없앰
                splashFactory: NoSplash.splashFactory,
              ),
            ),
            body: TabBarView(
              children: [
                for (var tab in tabs) //skip 사용하면 1번 항목 빼고 skip
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AlarmContent(
                          title: "John_mobbin",
                          time: "4h",
                          subtitle: "Mentioned you",
                          urlImage:
                              "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
                          description:
                              "Here's a thread you should follow if you love botany @jane_mobbin.",
                        ),
                        AlarmContent(
                          title: "Yum2",
                          time: "5h",
                          subtitle: "Followed you",
                          urlImage:
                              "https://mblogthumb-phinf.pstatic.net/MjAyMzAyMDhfNDQg/MDAxNjc1ODM0NTAzNTYy.-gOZwfsMuymLTpFESAV8Mns1IhbLYqAXIAvUMeKhJNIg.LW6XEuLA8IOnJlNb7FtbhU2cWl-9gfPCj9wCasT-aTog.JPEG.hotgogimandu/IMG_7251.JPG?type=w800",
                          isFollow: true,
                        ),
                        AlarmContent(
                          title: "Howard",
                          time: "1d",
                          subtitle: "Followed you",
                          urlImage:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfQNSKEII5Euf1DbxpP7XoN7LoXOWaiO22NA&s",
                          isFollow: true,
                        ),
                        AlarmContent(
                          title: "Yumi",
                          time: "2d",
                          subtitle: "Send message",
                          urlImage:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                          description: "hi this is homework homework haha",
                        ),
                        AlarmContent(
                          title: "John_mobbin",
                          time: "4h",
                          subtitle: "Mentioned you",
                          urlImage:
                              "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
                          description:
                              "Here's a thread you should follow if you love botany @jane_mobbin.",
                        ),
                        AlarmContent(
                          title: "Yum2",
                          time: "5h",
                          subtitle: "Followed you",
                          urlImage:
                              "https://mblogthumb-phinf.pstatic.net/MjAyMzAyMDhfNDQg/MDAxNjc1ODM0NTAzNTYy.-gOZwfsMuymLTpFESAV8Mns1IhbLYqAXIAvUMeKhJNIg.LW6XEuLA8IOnJlNb7FtbhU2cWl-9gfPCj9wCasT-aTog.JPEG.hotgogimandu/IMG_7251.JPG?type=w800",
                          isFollow: true,
                        ),
                        AlarmContent(
                          title: "Howard",
                          time: "1d",
                          subtitle: "send message to you",
                          urlImage:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfQNSKEII5Euf1DbxpP7XoN7LoXOWaiO22NA&s",
                          description:
                              "Here's a thread you should follow if you love botany @jane_mobbin.",
                        ),
                        AlarmContent(
                          title: "Yumi",
                          time: "2d",
                          subtitle: "like you",
                          urlImage:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                          description: "hi this is homework homework homework",
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
