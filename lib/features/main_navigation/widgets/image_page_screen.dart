import 'package:flutter/material.dart';
import 'package:hw_navigation/constants/breakpoint.dart';

class ImagePageScreen extends StatefulWidget {
  final List<String> imageUrls;
  const ImagePageScreen({super.key, required this.imageUrls});

  @override
  State<ImagePageScreen> createState() => _ImagePageScreenState();
}

class _ImagePageScreenState extends State<ImagePageScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height > Breakpoints.sm
          ? MediaQuery.of(context).size.height * 0.4
          : MediaQuery.of(context).size.height * 0.2,
      child: SizedBox(
        child: PageView.builder(
          itemCount: widget.imageUrls.length,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.77,
                height: height > Breakpoints.sm
                    ? MediaQuery.of(context).size.height * 0.4
                    : MediaQuery.of(context).size.height * 0.2,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.network(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
