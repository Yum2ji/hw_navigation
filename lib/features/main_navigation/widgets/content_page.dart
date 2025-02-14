import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/video_recording_screen.dart';
import 'package:hw_navigation/features/main_navigation/widgets/alert_button.dart';
import 'package:hw_navigation/features/main_navigation/widgets/image_page_screen.dart';
import 'package:image_picker/image_picker.dart';

class ContentPage extends StatefulWidget {
  bool isWriteMode;
  final String title;

  final String representImage;
  //글에서만만 보이는 부분
  String? subtitle;
  String? uploadTime;
  int? replyCnt;
  int? likeCnt;
  List<String>? imageUrls;
  List<String>? friendImageUrls;

  //Writing mode에서만 보이는 부분

  ContentPage({
    super.key,
    required this.isWriteMode,
    required this.title,
    required this.representImage,
    this.subtitle,
    this.uploadTime,
    this.replyCnt,
    this.likeCnt,
    this.imageUrls,
    this.friendImageUrls,
  });

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _lineCount = 1;
  XFile? _selectedImage;
  TextEditingController userInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userInputController.addListener(_updateLineCount);
  }

  void _onTapAlert() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) => const AlertButton(),
    );
  }

  @override
  void dispose() {
    userInputController.removeListener(_updateLineCount);
    userInputController.dispose();
    super.dispose();
  }

  void _updateLineCount() {
    final text = userInputController.text;

    // TextPainter를 사용하여 텍스트의 줄 수 계산
    final textSpan =
        TextSpan(text: text, style: const TextStyle(fontSize: Sizes.size20));
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
    )..layout(maxWidth: MediaQuery.of(context).size.width * 2 / 3);

    final lineCount = (textPainter.height / Sizes.size20).ceil(); // 22는 폰트 크기
    setState(() {
      _lineCount = lineCount;
    });
  }

  Future<void> _onCameraRecordTap() async {
    final image = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const VideoRecordingScreen(),
      ),
    );

    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size20,
        vertical: Sizes.size10,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                            widget.representImage,
                          ),
                          radius: 30,
                        ),
                        Positioned(
                          top: 35,
                          left: 35,
                          child: Container(
                            clipBehavior: Clip.none,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 4,
                                color: Colors.white,
                              ),
                              //
                            ),
                            child: const Center(
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: Sizes.size18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gaps.v10,
                    SizedBox(
                      height: !widget.isWriteMode
                          ? (widget.imageUrls!.isNotEmpty
                              ? MediaQuery.of(context).size.height * 0.23
                              : MediaQuery.of(context).size.height * 0.05)
                          : (MediaQuery.of(context).size.height *
                              0.02 *
                              (_lineCount - 1)),
                      child: VerticalDivider(
                        color: Colors.grey.shade300,
                        width: 1,
                        thickness: 1,
                      ),
                    ),
                    Gaps.v10,
                    widget.friendImageUrls == null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.zero,
                                    clipBehavior: Clip.none,
                                    width: Sizes.size40,
                                    height: Sizes.size40,
                                    child: ClipOval(
                                      child: Image.network(
                                        widget.representImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.zero,
                                    clipBehavior: Clip.none,
                                    width: Sizes.size40,
                                    height: Sizes.size40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                                //color: Colors.red,
                                ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 28,
                                  child: Container(
                                    clipBehavior: Clip.none,
                                    width: 31,
                                    height: 31,
                                    decoration: const BoxDecoration(
                                        // color: Colors.black,
                                        ),
                                    child: ClipOval(
                                      child: Image.network(
                                        widget.friendImageUrls![0],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 7,
                                  left: 0,
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    decoration: const BoxDecoration(
                                        // color: Colors.black,
                                        ),
                                    child: ClipOval(
                                      child: Image.network(
                                        widget.friendImageUrls![1],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 28,
                                  left: 21,
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                        // color: Colors.black,
                                        ),
                                    child: ClipOval(
                                      child: Image.network(
                                        widget.friendImageUrls![2],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
              Gaps.h14,
              Flexible(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.title,
                                  style: const TextStyle(
                                    fontSize: Sizes.size20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                if (!widget.isWriteMode) ...[
                                  Gaps.h7,
                                  const FaIcon(
                                    FontAwesomeIcons.solidCircleCheck,
                                    size: Sizes.size20,
                                    color: Colors.blue,
                                  ),
                                ]
                              ],
                            ),
                            if (!widget.isWriteMode) ...[
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        widget.uploadTime!,
                                        style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: Sizes.size16,
                                        ),
                                      ),
                                      Gaps.h8,
                                      GestureDetector(
                                        onTap: _onTapAlert,
                                        child: const FaIcon(
                                          FontAwesomeIcons.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gaps.v4,
                                ],
                              ),
                            ],
                          ],
                        ),
                        if (!widget.isWriteMode &&
                            widget.subtitle != null &&
                            widget.subtitle!.isNotEmpty)
                          Text(
                            widget.subtitle!,
                            style: const TextStyle(
                              fontSize: Sizes.size16,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        if (!widget.isWriteMode &&
                            widget.subtitle!.isEmpty) ...[
                          Gaps.v20,
                        ],
                        if (widget.isWriteMode) ...[
                          Padding(
                            padding: EdgeInsets.zero,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.top,
                              autocorrect: false,
                              maxLines: null,
                              controller: userInputController,
                              style: const TextStyle(
                                fontSize: Sizes.size20,
                              ),
                              scrollPadding: EdgeInsets.zero,
                              cursorWidth: 2,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: "Start a thread...",
                                hintStyle: TextStyle(
                                  fontSize: Sizes.size18,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w400,
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                          ),
                          Gaps.v10,
                          if (_selectedImage != null) ...[
                            Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              height: MediaQuery.of(context).size.height*0.4,
                              clipBehavior: Clip.hardEdge,
                              decoration:  BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.file(
                                File(_selectedImage!.path),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Gaps.v10,
                          ],
                          GestureDetector(
                            onTap: _onCameraRecordTap,
                            child: Icon(
                              Icons.attach_file,
                              size: Sizes.size24,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                        if (widget.imageUrls != null &&
                            widget.imageUrls!.isNotEmpty)
                          const SizedBox(
                            height: 200,
                          ),
                        if (!widget.isWriteMode)
                          const Column(
                            children: [
                              Gaps.v20,
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: Sizes.size24,
                                  ),
                                  Gaps.h20,
                                  FaIcon(
                                    FontAwesomeIcons.comment,
                                    size: Sizes.size24,
                                  ),
                                  Gaps.h20,
                                  FaIcon(
                                    FontAwesomeIcons.arrowsRotate,
                                    size: Sizes.size24,
                                  ),
                                  Gaps.h20,
                                  FaIcon(
                                    FontAwesomeIcons.paperPlane,
                                    size: Sizes.size24,
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ],
                    ),
                    if (widget.replyCnt != null || widget.likeCnt != null)
                      Column(
                        children: [
                          Gaps.v20,
                          Text(
                            "${widget.replyCnt ?? 0} replies · ${widget.likeCnt ?? 0} likes",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: Sizes.size18,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (!widget.isWriteMode)
            Positioned(
              top: Sizes.size72,
              child:
                  (widget.imageUrls != null && widget.imageUrls!.isNotEmpty)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ImagePageScreen(
                            imageUrls: widget.imageUrls!,
                          ),
                        )
                      : Container(),
            )
        ],
      ),
    );
  }
}
