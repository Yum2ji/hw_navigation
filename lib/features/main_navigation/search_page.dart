import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/breakpoint.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/search_content.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onMainTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: GestureDetector(
        onTap: _onMainTap,
        child: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.size24,
            left: Sizes.size20,
            right: Sizes.size20,
          ),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              backgroundColor: Colors.white,
              forceMaterialTransparency: true,
              title: const Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  textAlign: TextAlign.start,
                  "Search",
                  style: TextStyle(
                    fontSize: Sizes.size36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CupertinoSearchTextField(
                          style: const TextStyle(
                            fontSize: Sizes.size20,
                          ),
                          controller: _textEditingController,
                        ),
                      ),
                    ],
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
                    title: "짱구",
                    subtitle: "짱구는 못말려의 짱구",
                    follower: "23.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://mblogthumb-phinf.pstatic.net/MjAyMzAyMDhfNDQg/MDAxNjc1ODM0NTAzNTYy.-gOZwfsMuymLTpFESAV8Mns1IhbLYqAXIAvUMeKhJNIg.LW6XEuLA8IOnJlNb7FtbhU2cWl-9gfPCj9wCasT-aTog.JPEG.hotgogimandu/IMG_7251.JPG?type=w800",
                    title: "짱아",
                    subtitle: "짱아",
                    follower: "100M",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfQNSKEII5Euf1DbxpP7XoN7LoXOWaiO22NA&s",
                    title: "훈이",
                    subtitle: "훈이훈이이",
                    follower: "10.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR938QynRShg_WaZh-YKlq6M3ucVuPnxQachA&s",
                    title: "봉미선",
                    subtitle: "짱구엄마",
                    follower: "30.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQfbdcEqqTFMGvdO7mJYYjWVC6Lq48YVzzMQ&s",
                    title: "신형만만",
                    subtitle: "짱구아빠",
                    follower: "35.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                    title: "흰둥이",
                    subtitle: "짱구는 못말려의 짱구",
                    follower: "23.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://i.namu.wiki/i/qWyoh8nA_DcTuY4gqcmkFC2k5Sbn8D6yVCVRQHMhJD-eRYtugUDNg6jP-v0VqbnFdCjL4jYrepNXw9ey8ouFAA.webp",
                    title: "유리",
                    subtitle: "짱구 절친 유리리",
                    follower: "50.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                    title: "두목님",
                    subtitle: "초록유치원원장님",
                    follower: "1K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
                    title: "짱구",
                    subtitle: "짱구는 못말려의 짱구",
                    follower: "23.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://mblogthumb-phinf.pstatic.net/MjAyMzAyMDhfNDQg/MDAxNjc1ODM0NTAzNTYy.-gOZwfsMuymLTpFESAV8Mns1IhbLYqAXIAvUMeKhJNIg.LW6XEuLA8IOnJlNb7FtbhU2cWl-9gfPCj9wCasT-aTog.JPEG.hotgogimandu/IMG_7251.JPG?type=w800",
                    title: "짱아",
                    subtitle: "짱아",
                    follower: "100M",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfQNSKEII5Euf1DbxpP7XoN7LoXOWaiO22NA&s",
                    title: "훈이",
                    subtitle: "훈이훈이이",
                    follower: "10.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR938QynRShg_WaZh-YKlq6M3ucVuPnxQachA&s",
                    title: "봉미선",
                    subtitle: "짱구엄마",
                    follower: "30.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQfbdcEqqTFMGvdO7mJYYjWVC6Lq48YVzzMQ&s",
                    title: "신형만만",
                    subtitle: "짱구아빠",
                    follower: "35.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                    title: "흰둥이",
                    subtitle: "짱구는 못말려의 짱구",
                    follower: "23.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://i.namu.wiki/i/qWyoh8nA_DcTuY4gqcmkFC2k5Sbn8D6yVCVRQHMhJD-eRYtugUDNg6jP-v0VqbnFdCjL4jYrepNXw9ey8ouFAA.webp",
                    title: "유리",
                    subtitle: "짱구 절친 유리리",
                    follower: "50.3K",
                  ),
                  Gaps.v16,
                  const SearchContent(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                    title: "두목님",
                    subtitle: "초록유치원원장님",
                    follower: "1K",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
