import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/content_page.dart';

class HomePage extends StatefulWidget {
  static String routeName = 'home';
  static const routeURL = "/home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
      top: true,
      child: Scaffold(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          forceMaterialTransparency: true,
          centerTitle: true,
          title: Image.network(
            scale: 5,
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShBB05nhcvrqcYLPTZfhurcAWFXtbQcp9BCQ&s",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size5,
              vertical: Sizes.size10,
            ),
            child: Column(
              children: [
                ContentPage(
                  isWriteMode: false,
                  title: "짱구",
                  subtitle: "제 이름은 짱구에요.",
                  representImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                  uploadTime: "2h",
                  replyCnt: 23,
                  likeCnt: 437,
                  imageUrls: const [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                  friendImageUrls: const [
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "짱아",
                  subtitle: "짱아는 아직말을 못해요. 짱아는 짱구동생이에요.",
                  representImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                  uploadTime: "1h",
                  replyCnt: 1,
                  likeCnt: 10,
                  imageUrls: const [],
                  friendImageUrls: const [
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "흰둥이",
                  subtitle: "",
                  representImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                  uploadTime: "20min",
                  replyCnt: 100,
                  likeCnt: 1000,
                  imageUrls: const [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VxFZFiiWHMYhE-uOLi2DvZs3Vz-MLymarA&s",
                  ],
                  friendImageUrls: const [
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "철수",
                  subtitle: "김철수에요. 짱구의 친구입니다. ",
                  representImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRD2a_latkseTQIo7E1pd7OPbWVxlUlb75ww&s",
                  uploadTime: "5m",
                  replyCnt: 300,
                  likeCnt: 1,
                  imageUrls: const [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRD2a_latkseTQIo7E1pd7OPbWVxlUlb75ww&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRD2a_latkseTQIo7E1pd7OPbWVxlUlb75ww&s",
                  ],
                  friendImageUrls: const [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "두목님",
                  subtitle: "원장님님",
                  representImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                  uploadTime: "20min",
                  replyCnt: 333,
                  likeCnt: 7,
                  imageUrls: const [],
                  friendImageUrls: const [
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "훈이",
                  subtitle: "수지야~",
                  representImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                  uploadTime: "20min",
                  replyCnt: 100,
                  imageUrls: const [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                  ],
                  friendImageUrls: const [
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
