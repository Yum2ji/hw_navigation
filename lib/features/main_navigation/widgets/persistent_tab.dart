import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/sizes.dart';

class PersistentTab extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(

      child: TabBar(
        indicatorPadding: EdgeInsets.zero,
        indicatorWeight: 1,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.grey.shade800,
        unselectedLabelColor: Colors.grey.shade500,
        labelColor: Colors.black,

        tabs:  const [
          Text(
            "Threads",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Text(
            "Replies",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 30;

  @override
  // TODO: implement minExtent
  double get minExtent => 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
