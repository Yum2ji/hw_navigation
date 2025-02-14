import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:image_picker/image_picker.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  bool isAlbumSelected = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onAlbumTap() {
    isAlbumSelected = !isAlbumSelected;
    setState(() {});
  }

  Future<void> _onPickVideoPressed() async {
    print(ImageSource.gallery.index);
    final Image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: MediaQuery.of(context).size.height * 0.93,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Sizes.size24,
          ),
          topRight: Radius.circular(
            Sizes.size24,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.zero,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size8,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: Sizes.size20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    padding: const EdgeInsets.all(Sizes.size2),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: _onAlbumTap,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: Sizes.size5,
                              horizontal: Sizes.size10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: !isAlbumSelected
                                  ? Colors.white
                                  : Colors.grey.shade200,
                            ),
                            child: const Text(
                              "Photos",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Sizes.size20,
                              ),
                            ),
                          ),
                        ),
                        Gaps.h5,
                        GestureDetector(
                          onTap: _onAlbumTap,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: Sizes.size5,
                              horizontal: Sizes.size10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isAlbumSelected
                                  ? Colors.white
                                  : Colors.grey.shade200,
                            ),
                            child: const Text(
                              "Albums",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Sizes.size20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size8,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add",
                          style: TextStyle(
                            fontSize: Sizes.size20,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Scrollbar(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: FocusScope.of(context).hasFocus
                  ? MediaQuery.of(context).size.height * 0.33
                  : MediaQuery.of(context).size.height * 0.6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Gaps.v20,
                Row(
                  children: [
                    Expanded(
                      child: CupertinoSearchTextField(
                        style: const TextStyle(
                          fontSize: Sizes.size20,
                        ),
                        controller: _textEditingController,
                        placeholder: "Photos, People, Places ...",
                        placeholderStyle: TextStyle(
                          fontSize: Sizes.size20,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400,
                        ),
                        padding: const EdgeInsets.all(
                          Sizes.size12,
                        ),
                      ),
                    ),
                  ],
                ),
                Gaps.v20,
                GestureDetector(
                  onTap: _onPickVideoPressed,
                  child: const Icon(Icons.album),),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
