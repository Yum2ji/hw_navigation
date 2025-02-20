import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/content_page.dart';
import 'package:hw_navigation/utils.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  bool _openKeyboard = false;

  void _stopCommenting() {
    FocusScope.of(context).unfocus();
    setState(() {
      _openKeyboard = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      height: MediaQuery.of(context).size.height * 0.93,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Sizes.size20),
          topRight: Radius.circular(Sizes.size20),
        ),
      ),
      child: GestureDetector(
        onTap: _stopCommenting,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: isDark? Colors.grey.shade900 :Colors.white,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: isDark? Colors.grey.shade900 : Colors.white,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.zero,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: Sizes.size20,
                       // color: Colors.black,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "New thread",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Sizes.size22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Stack(
            children: [
              Scrollbar(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                      child: const Divider(),
                    ),
                    ContentPage(
                      isWriteMode: true,
                      title: "짱구",
                      // subtitle: "hi",
                      representImage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                // bottomnavigation으로 scaffold에 만들어주면
                //키보드 생겼을때 적고 있는 값이 안보여서 이렇게 할 수밖에 없음.
                child: BottomAppBar(
                  color:  isDark? Colors.grey.shade900  :Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size4,
                      vertical: Sizes.size5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Anyone can reply",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: Sizes.size20,
                          ),
                        ),
                        const Text(
                          "Post",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.size20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
