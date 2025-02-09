import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';

class ReportInfo extends StatefulWidget {
  final String title;
  final String subtitle;
  const ReportInfo({super.key, required this.title, required this.subtitle});

  @override
  State<ReportInfo> createState() => _ReportInfoState();
}

class _ReportInfoState extends State<ReportInfo> {
  bool _isSubtitleVisible = false;

  void _onDetailInfoTap() {
    setState(() {
      _isSubtitleVisible = !_isSubtitleVisible; // 클릭 시 subtitle 가시성 토글
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size10,
        vertical: Sizes.size10,
      ),
      child: Column(
        children: [
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              widget.title,
              style: TextStyle(
                fontWeight:
                    _isSubtitleVisible ? FontWeight.w600 : FontWeight.w400,
                fontSize: Sizes.size18,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: _onDetailInfoTap,
              child: Icon(
                _isSubtitleVisible
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_right,
                size: Sizes.size22,
                weight: 2,
              ),
            ),
          ],
        ),
          if (_isSubtitleVisible) ...[
            // subtitle이 보이는 경우에만 Text 표시
            Gaps.v5,
            Padding(
              padding: const EdgeInsets.only(top: 8.0), // 간격 추가
              child: Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.grey.shade700,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 10,
              ),
            ),
          ],
        ],
      ),
    
    );
  }
}
