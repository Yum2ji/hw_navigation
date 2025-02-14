import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/image_preview_screen.dart';
import 'package:hw_navigation/features/main_navigation/widgets/gallery_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class VideoRecordingScreen extends StatefulWidget {
  const VideoRecordingScreen({super.key});

  @override
  State<VideoRecordingScreen> createState() => _VideoRecordingScreenState();
}

class _VideoRecordingScreenState extends State<VideoRecordingScreen>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  bool _isLibrary = false;
  bool _hasPermission = false;
  bool _isSelfieMode = false;
  late CameraController _cameraController;

  late final AnimationController _buttonAnimationController =
      AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  late final Animation<double> _buttonAnimation = Tween(
    begin: 1.0,
    end: 1.5,
  ).animate(_buttonAnimationController);

  Future<void> _toggleSelfieMode() async {
    _isSelfieMode = !_isSelfieMode;

    await initCamera();
    setState(() {});
  }

  Future<void> initCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) return;

    _cameraController = CameraController(
      cameras[_isSelfieMode ? 1 : 0],
      ResolutionPreset.ultraHigh,
    );

    await _cameraController.initialize();

    await _cameraController.prepareForVideoRecording();

    setState(() {});
  }

  Future<void> initPermission() async {
    final cameraPermission = await Permission.camera.request();
    final micPermission = await Permission.microphone.request();

    final cameraDenied =
        cameraPermission.isDenied || cameraPermission.isLimited;
    final micDenied =
        micPermission.isDenied || micPermission.isPermanentlyDenied;

    if (!cameraDenied && !micDenied) {
      _hasPermission = true;
      await initCamera();
      setState(() {});
    }
  }

  Future<void> _takeCamera() async {
    final image = await _cameraController.takePicture();
    _buttonAnimationController.forward();
    await GallerySaver.saveImage(image.path, albumName: "TikTok clone!");
    Navigator.pop(context, image);
  }

  Future<void> _onPickPressed() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (image == null) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImagePreviewScreen(
          image: image,
          isPicked: true,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    initPermission();
  }

  @override
  void dispose() {
    _buttonAnimationController.dispose();
    _cameraController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!_hasPermission) return;
    if (!_cameraController.value.isInitialized) return;

    if (state == AppLifecycleState.inactive) {
      _cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      initCamera();
    }
  }

  void _onCameraClick() {
    _isLibrary = false;
    setState(() {});
  }

  Future<void> _onLibraryClick() async {
    _isLibrary = true;
    setState(() {});

    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (image == null) return;

    Navigator.pop(context, image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: !_hasPermission || !_cameraController.value.isInitialized
            ? const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Initializing",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.size20,
                    ),
                  ),
                  Gaps.v20,
                  CircularProgressIndicator.adaptive(),
                ],
              )
            : Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        Sizes.size20,
                      ),
                      bottomRight: Radius.circular(
                        Sizes.size20,
                      ),
                    )),
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    CameraPreview(_cameraController),
                    Positioned(
                      width: MediaQuery.of(context).size.width,
                      bottom: Sizes.size20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.flash_off_rounded,
                                  size: Sizes.size36,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _takeCamera,
                            child: ScaleTransition(
                              scale: _buttonAnimation,
                              child: Stack(
                                children: [
                                  Container(
                                    width: Sizes.size80 + Sizes.size10,
                                    height: Sizes.size80 + Sizes.size10,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(
                                    top: Sizes.size5,
                                    left: Sizes.size5,
                                    child: Container(
                                      width: Sizes.size80,
                                      height: Sizes.size80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: Sizes.size4,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: IconButton(
                                onPressed: _toggleSelfieMode,
                                icon: const Icon(
                                  Icons.loop,
                                  size: Sizes.size36,
                                  color: Colors.white,
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
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
              Center(
              child: GestureDetector(
                onTap: _onCameraClick,
                child: Text(
                  "Camera",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: !_isLibrary ? FontWeight.w500 : FontWeight.w300,
                    fontSize: Sizes.size16,
                  ),
                ),
              ),
            ),
          Expanded(
              child: GestureDetector(
                onTap: _onLibraryClick,
                child: Center(
                  child: Text(
                    "Library",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: _isLibrary ? FontWeight.w500 : FontWeight.w300,
                      fontSize: Sizes.size16,
                    ),
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
