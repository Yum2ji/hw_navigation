import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/content_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top : true,
      child: Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(   
          backgroundColor: Colors.white,
          forceMaterialTransparency : true,
          centerTitle: true, 
          title:      Image.network(
              scale: 3,
              "https://i.namu.wiki/i/_t80GHIA67qxmZV41tHs0TkQ-dX1T0oglMw2OvVzDkVXyPdHiZ4SDwTsQ8p2GJOuElULm5j5v-0d1EPgbF1JjA.webp",
            ),),
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
                      "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
                  uploadTime: "2h",
                  replyCnt: 23,
                  likeCnt: 437,
                  imageUrls: const [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6X-oxi5cfLgsY2hp_cl4o-x9h1cdRsJLepQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2S500grNWrmxzQS9pT87m--Gje_t0rOsOeQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEY5S1ZhEvDM6jZE4j3NyLoCnJbK4d_ingFg&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
                  ],
                  friendImageUrls: const [
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko"
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "짱아",
                  subtitle: "짱아는 아직말을 못해요. 짱아는 짱구동생이에요.",
                  representImage:
                      "https://mblogthumb-phinf.pstatic.net/MjAyMzAyMDhfNDQg/MDAxNjc1ODM0NTAzNTYy.-gOZwfsMuymLTpFESAV8Mns1IhbLYqAXIAvUMeKhJNIg.LW6XEuLA8IOnJlNb7FtbhU2cWl-9gfPCj9wCasT-aTog.JPEG.hotgogimandu/IMG_7251.JPG?type=w800",
                  uploadTime: "1h",
                  replyCnt: 1,
                  likeCnt: 10,
                  imageUrls: const [],
                  friendImageUrls: const [
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                    "https://mblogthumb-phinf.pstatic.net/MjAxOTAyMjhfOTAg/MDAxNTUxMzUzMjgxNzk1.-pmXSbFbqF3U1KcTl1B9chVrCrVe5dJGSY-J4TDn6Scg.kk71ukk5QW1avQB_Wbwl6oZd2MHP9qXT1smcHnDXBEog.JPEG.sinnoske1992/downloadfile-37.jpg?type=w800"
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
                    "https://mblogthumb-phinf.pstatic.net/MjAxOTEwMDlfMjk3/MDAxNTcwNTczNDQxMjI1.zar5OtCPpcYARaR7-HH9D-U2Mbr58DrQRAS_pgKP0vYg.vc9wfKhXGmwuWh54z7qd0s3jzzSVsYA9kzCSQT36FNwg.JPEG.kwoun486/IMG_8155.JPG?type=w800",
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko"
                  ],
                  friendImageUrls: const [
                    "https://i.pinimg.com/236x/16/08/e4/1608e4f3e81f666437ef984884908a77.jpg",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4dSWank4KGUIYGGHOc1EMW3fV0slW13l4Tw&s",
                    "https://i.pinimg.com/736x/84/1e/7b/841e7b54dfb0f5b687ca4df4e90e35a9.jpg"
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
                    "https://3.gall-img.com/tdgall/files/attach/images/82/553/650/235/3357bd1da90dcaf6e64b3f6fe8e0d6f6.png",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrEs6F3VE-tuSYAuUobw1XTIe6S9LiTv_xA&s",
                    "https://3.gall-img.com/tdgall/files/attach/images/82/553/650/235/72469a2729c39860c43a163697c73ffa.jpg"
                  ],
                  friendImageUrls: const [
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s",
                    "https://static.wikia.nocookie.net/shinchan/images/b/b2/%EC%8B%A0%EC%A7%B1%EA%B5%AC2.JPG/revision/latest?cb=20131026025408&path-prefix=ko",
                  ],
                ),
                const Divider(),
                ContentPage(
                  isWriteMode: false,
                  title: "유리",
                  subtitle: "소꿉놀이 할사람~! 소꿉놀이소꿉놀이 소꿉놀이, 소꿉놀이소꿉놀이",
                  representImage:
                      "https://i.namu.wiki/i/qWyoh8nA_DcTuY4gqcmkFC2k5Sbn8D6yVCVRQHMhJD-eRYtugUDNg6jP-v0VqbnFdCjL4jYrepNXw9ey8ouFAA.webp",
                  uploadTime: "20min",
                  replyCnt: 333,
                  likeCnt: 7,
                  imageUrls: const [],
                  friendImageUrls: const [
                    "https://i.pinimg.com/236x/16/08/e4/1608e4f3e81f666437ef984884908a77.jpg",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4dSWank4KGUIYGGHOc1EMW3fV0slW13l4Tw&s",
                    "https://i.pinimg.com/736x/84/1e/7b/841e7b54dfb0f5b687ca4df4e90e35a9.jpg"
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
                    "https://i.pinimg.com/736x/9d/56/cb/9d56cb33691348a7a01e050bfcbc5787.jpg",
                    "https://i.pinimg.com/736x/0c/f3/90/0cf3908fdda81f5a3f0320c6d2c04b90.jpg",
                    "https://i.pinimg.com/736x/6c/b8/93/6cb893b204a267977923dc69224dd41c.jpg",
                  ],
                  friendImageUrls: const [
                    "https://i.namu.wiki/i/qWyoh8nA_DcTuY4gqcmkFC2k5Sbn8D6yVCVRQHMhJD-eRYtugUDNg6jP-v0VqbnFdCjL4jYrepNXw9ey8ouFAA.webp",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_8Rj-vULPVGhf-eQyiY5sG2dMcHFQzD6RrQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzhAJkO5uyAs8TF8gxVE8leu21IqMML5ypg&s"
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
