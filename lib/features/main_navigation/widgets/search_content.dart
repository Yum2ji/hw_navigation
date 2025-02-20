import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';

class SearchContent extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String follower;
  const SearchContent(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.follower});

  @override
  State<SearchContent> createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            foregroundImage: NetworkImage(
              widget.imageUrl,
            ),
            radius: width * 0.07,
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                //  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: Sizes.size20,
                ),
              ),
              Gaps.h7,
              const FaIcon(
                FontAwesomeIcons.solidCircleCheck,
                size: Sizes.size22,
                color: Colors.blue,
              ),
            ],
          ),
          subtitle: Text(
            widget.subtitle,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: Sizes.size18,
            ),
          ),
          trailing: GestureDetector(
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
        ),
        Row(
          children: [
            SizedBox(
              width: width * 0.17,
            ),
            Text(
              "${widget.follower} Followers",
              style: const TextStyle(
              //  color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: Sizes.size18,
              ),
            ),
          ],
        ),
        Gaps.v12,
        const Divider(),
      ],
    );
  }
}
