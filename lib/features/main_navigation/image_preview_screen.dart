import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:video_player/video_player.dart';

class ImagePreviewScreen extends StatefulWidget {
  final XFile image;
  final bool isPicked;
  const ImagePreviewScreen({
    super.key,
    required this.image,
    required this.isPicked,
  });

  @override
  State<ImagePreviewScreen> createState() => _ImagePreviewScreenState();
}

class _ImagePreviewScreenState extends State<ImagePreviewScreen> {
  bool _saveImage = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> _saveToGallery() async {
    if (_saveImage) return;
    await GallerySaver.saveImage(widget.image.path, albumName: "TikTok clone!");

    _saveImage = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Cancel"),
        actions: [
          if (!widget.isPicked)
            IconButton(
              onPressed: _saveToGallery,
              icon: FaIcon(
                _saveImage ? FontAwesomeIcons.check : FontAwesomeIcons.download,
              ),
            ),
        ],
      ),
      body: Container(),
    );
  }
}
