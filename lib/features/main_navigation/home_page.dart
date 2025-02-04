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
    return Column(
      children: [
        Gaps.v10,
        Image.network(
          scale: 2,
          "https://i.namu.wiki/i/8TO3WW-En0DqSQnoirRTEqGzvj6-qsxJhjcoI4IeBHZkJ1-uje5VLx7MT77sp_RZ7z1b3ulQbKWQI7xofJ_NmHQd_g9voa-uJmDFQWaIsG_1sj_cnTXbtn4dZzZf03TEOzGs72VnnETFLTc5s8ntRn3Okd0h8yACuziHx5XIgsU.svg",
        ),
        const ContentPage(
          title: "짱구",
          subtitle: "제 이름은 짱구에요.",
          representImage:
              "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
          uploadTime: "2h",
          replyCnt: 23,
          likeCnt: 437,
          imageUrls: [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6X-oxi5cfLgsY2hp_cl4o-x9h1cdRsJLepQ&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2S500grNWrmxzQS9pT87m--Gje_t0rOsOeQ&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEY5S1ZhEvDM6jZE4j3NyLoCnJbK4d_ingFg&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNT06kXfbeS9_IapNSpA_-NsY6mf-IjREXSw&s",
          ],
          friendImageUrls: [
            "https://i.namu.wiki/i/YwGmUUTmGyKbx7q5hgqZBIDQm8ZepP1u1dLekPheXHJ2NXf3P2ZU7FvZLW4-DqNzqBay4kYGKI6mnuVFNxbjpw.webp",
            "https://i.namu.wiki/i/PKIzqww05fdf-pGShgym809fLMn3ZT_66uGU93nEOquxTjSOOcvy-ghcv9jTGtccGVJgbcmYOxrqxSHRTj0olQ.webp",
            "https://i.namu.wiki/i/tFyMdXryUFXXdZnQGUa9PBr3fZo3RPbOWuJCVslfskSFXhDPSOFHg4ldmkqjwSULnx0PUOaiZayn8hImx4DspA.webp"
          ],
        ),
        const Divider(),
        const ContentPage(
          title: "짱아",
          subtitle: "짱아는 아직말을 못해요. 짱아는 짱구동생이에요.",
          representImage:
              "https://i.namu.wiki/i/G9zOqNkgEpgPj7nx65voRxEER5xG_jBeXugTKthz6qN4HLIyZ81c-Q9C0QsAxaiNpLmg5xOpoY4QdVLP0ZAo9g.webp",
          uploadTime: "1h",
          replyCnt: 1,
          likeCnt: 10,
          imageUrls: [],
          friendImageUrls: [
            "https://static.wikia.nocookie.net/shinchan/images/6/64/Hiroshi.JPG/revision/latest?cb=20131020032448&path-prefix=ko",
            "https://i.namu.wiki/i/JW2QBVsoDYd01-PdVQ6Vo_If87Eo9wjc6gitnvDHWJDtjYBkBv5qlc3FqinjqeOaGAPaVwx5w_EZbf2bGmpT4g.webp",
            "https://mblogthumb-phinf.pstatic.net/MjAxOTAyMjhfOTAg/MDAxNTUxMzUzMjgxNzk1.-pmXSbFbqF3U1KcTl1B9chVrCrVe5dJGSY-J4TDn6Scg.kk71ukk5QW1avQB_Wbwl6oZd2MHP9qXT1smcHnDXBEog.JPEG.sinnoske1992/downloadfile-37.jpg?type=w800"
          ],
        ),
        const Divider(),
        const ContentPage(
          title: "흰둥이",
          subtitle: "",
          representImage:
              "https://i.namu.wiki/i/imS20jFHx8ISktmwqwfs90JMvIDykHuaiGZKZfWJUTBeYs6ovoqIBotk7trFa8nWj7dpWp_9Mzz2rv1TMHLskg.webp",
          uploadTime: "20min",
          replyCnt: 100,
          likeCnt: 1000,
          imageUrls: [
            "https://mblogthumb-phinf.pstatic.net/MjAxOTEwMDlfMjk3/MDAxNTcwNTczNDQxMjI1.zar5OtCPpcYARaR7-HH9D-U2Mbr58DrQRAS_pgKP0vYg.vc9wfKhXGmwuWh54z7qd0s3jzzSVsYA9kzCSQT36FNwg.JPEG.kwoun486/IMG_8155.JPG?type=w800",
            "https://i.namu.wiki/i/0GCwXxqfwqOkj3bIJq1CZT6WuaDbmHlPJ3tQAEojSTRcwqdGZsxl5RFpDqGExZHgsStADxkNk3DBcN_oGDlJ2g.webp",
            "https://i.namu.wiki/i/S3jbriICT4YlkCgdSBaY-_mDmRe2aPjjmlfEIEly-qUCNnk2q4GncAjJEh3Ef0QdhbOA60f1TU9fIQQswbrSqg.webp"
          ],
          friendImageUrls: [
            "https://i.pinimg.com/236x/16/08/e4/1608e4f3e81f666437ef984884908a77.jpg",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4dSWank4KGUIYGGHOc1EMW3fV0slW13l4Tw&s",
            "https://i.pinimg.com/736x/84/1e/7b/841e7b54dfb0f5b687ca4df4e90e35a9.jpg"
          ],
        ),
        const Divider(),
        const ContentPage(
          title: "철수",
          subtitle: "김철수에요. 짱구의 친구입니다. ",
          representImage:
              "https://i.namu.wiki/i/2tdgKmgzOOERhaMjXytD5H1YwUYEoU-4v8cU4z4HZq7d97SKylgg-gK0yhW7G5W-Uehzc_UiwoleCpghYrXskQ.webp",
          uploadTime: "5m",
          replyCnt: 300,
          likeCnt: 1,
          imageUrls: [
            "https://3.gall-img.com/tdgall/files/attach/images/82/553/650/235/3357bd1da90dcaf6e64b3f6fe8e0d6f6.png",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBhHKm7wTWm__1JBtlIBeVNTaYtQergwalcA&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrEs6F3VE-tuSYAuUobw1XTIe6S9LiTv_xA&s",
            "https://3.gall-img.com/tdgall/files/attach/images/82/553/650/235/72469a2729c39860c43a163697c73ffa.jpg"
          ],
          friendImageUrls: [
            "https://i.namu.wiki/i/imS20jFHx8ISktmwqwfs90JMvIDykHuaiGZKZfWJUTBeYs6ovoqIBotk7trFa8nWj7dpWp_9Mzz2rv1TMHLskg.webp",
            "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
            "https://i.namu.wiki/i/tFyMdXryUFXXdZnQGUa9PBr3fZo3RPbOWuJCVslfskSFXhDPSOFHg4ldmkqjwSULnx0PUOaiZayn8hImx4DspA.webp",
          ],
        ),
        const Divider(),
        const ContentPage(
          title: "유리",
          subtitle: "소꿉놀이 할사람~! 소꿉놀이소꿉놀이 소꿉놀이, 소꿉놀이소꿉놀이",
          representImage:
               "https://i.namu.wiki/i/tFyMdXryUFXXdZnQGUa9PBr3fZo3RPbOWuJCVslfskSFXhDPSOFHg4ldmkqjwSULnx0PUOaiZayn8hImx4DspA.webp",
          uploadTime: "20min",
          replyCnt: 333,
          likeCnt: 7,
          imageUrls: [
               ],
          friendImageUrls: [
            "https://i.pinimg.com/236x/16/08/e4/1608e4f3e81f666437ef984884908a77.jpg",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4dSWank4KGUIYGGHOc1EMW3fV0slW13l4Tw&s",
            "https://i.pinimg.com/736x/84/1e/7b/841e7b54dfb0f5b687ca4df4e90e35a9.jpg"
          ],
        ),
                const Divider(),
        const ContentPage(
          title: "훈이",
          subtitle: "수지야~",
          representImage:
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JmMX3eOY8iqaHnz4QXSdL4A7o0em3mNJIUrZk4kkIVjqtbHnOpqBXNLcAuVrMjgYzZo&usqp=CAU",
          uploadTime: "20min",
          replyCnt: 100,
          likeCnt: 1000,
          imageUrls: [
            "https://i.pinimg.com/736x/9d/56/cb/9d56cb33691348a7a01e050bfcbc5787.jpg",
            "https://i.pinimg.com/736x/0c/f3/90/0cf3908fdda81f5a3f0320c6d2c04b90.jpg",
            "https://i.pinimg.com/736x/6c/b8/93/6cb893b204a267977923dc69224dd41c.jpg",

               ],
          friendImageUrls: [
            "https://i.namu.wiki/i/QFTd-V-tZAR0JoUXfcZ1x24kl6Qtigf7rSe4HfI-7Ku7DnuonEILMB9Mg3yAeoY7aGNvweJ9Yix9s7p4FZ7mnA.webp",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_8Rj-vULPVGhf-eQyiY5sG2dMcHFQzD6RrQ&s",
            "https://i.namu.wiki/i/9or_SWMZZwADwmILqRyK_50R_-h1SsI7UApSl0-k-u5JP_aXhXvHgCfwMb5RVnNih09z6usjw2ltPdjsxeQCIQ.webp"
          ],
        ),
      ],
    );
  }
}
