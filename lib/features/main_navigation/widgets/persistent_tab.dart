import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/utils.dart';

class PersistentTab extends SliverPersistentHeaderDelegate {
  
 
  @override
  Widget build(

      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(

      child: const TabBar(
        indicatorPadding: EdgeInsets.zero,
        indicatorWeight: 1,
        indicatorSize: TabBarIndicatorSize.tab,

        tabs:  [
          Text(
            "Threads",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w700,
             // color: Colors.black,
            ),
          ),
          Text(
            "Replies",
            style: TextStyle(
              fontSize: Sizes.size20,
              fontWeight: FontWeight.w700,
             // color: Colors.black,
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
