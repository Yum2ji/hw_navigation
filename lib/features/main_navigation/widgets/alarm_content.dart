import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';

class AlarmContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String urlImage;
  String? description;
  bool? isFollow;

  AlarmContent(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.time,
      required this.urlImage,
      this.description,
      this.isFollow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.v14,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Stack(
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                      urlImage,
                    ),
                    radius: 30,
                  ),
                  Positioned(
                    top: 35,
                    left: 35,
                    child: Container(
                      clipBehavior: Clip.none,
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 4,
                          color: Colors.red,
                        ),
                        //
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.solidSquarePlus,
                          color: Colors.blue,
                          size: Sizes.size18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gaps.h8,
            Flexible(
              flex: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isFollow != null && isFollow!
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      title,
                                      style: const TextStyle(
                                        fontSize: Sizes.size20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Gaps.h7,
                                    Text(
                                      time,
                                      style: TextStyle(
                                        fontSize: Sizes.size20,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ],
                                ),
                                Gaps.v2,
                                Text(
                                  subtitle,
                                  style: TextStyle(
                                    fontSize: Sizes.size20,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border: Border.all(
                                    color: Colors.grey.shade400, // 회색 테두리
                                    width: 1.0, // 테두리 두께
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Sizes.size24,
                                    vertical: Sizes.size5,
                                  ),
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                     // color: Colors.black,
                                      fontSize: Sizes.size20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  title,
                                  style: const TextStyle(
                                    fontSize: Sizes.size20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Gaps.h7,
                                Text(
                                  time,
                                  style: TextStyle(
                                    fontSize: Sizes.size20,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                            Gaps.v2,
                            Text(
                              subtitle,
                              style: TextStyle(
                                fontSize: Sizes.size20,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                  Gaps.v2,
                  if (isFollow == null && description!=null)
                    Text(
                      description!,
                      style: const TextStyle(
                        fontSize: Sizes.size18,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  Gaps.v10,
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
