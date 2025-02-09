import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/report_info.dart';

class AlertButton extends StatefulWidget {
  const AlertButton({super.key});

  @override
  State<AlertButton> createState() => _AlertButtonState();
}

class _AlertButtonState extends State<AlertButton> {
  bool _isReport = false;

  void _onReportTap(context) {
    setState(() {
      _isReport = !_isReport;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _isReport
          ? MediaQuery.of(context).size.height * 0.6
          : MediaQuery.of(context).size.height * 0.4,
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
      child: _isReport
          ? Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                scrolledUnderElevation: 0,
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: const Text(
                  "Report",
                  style: TextStyle(
                    fontSize: Sizes.size18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              body: ListView(
                children: const [
                  Divider(),
                  ReportInfo(
                    title: "Why are you reporting this thread?",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "I just Don't like it",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "It's unlawful content under NetzDG",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "It's spam",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "Hate Speech or symbols",
                    subtitle: "Nudity or sexual activity",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "Nudity or Sexual activity",
                    subtitle: "Nudity or sexual activity",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "I just Don't like it",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "It's unlawful content under NetzDG",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "It's spam",
                    subtitle:
                        "Your Report is anonyous, except if you're recording an intecllectual property infringement. if someone is in immediate danger, call the local emergency services -dont'wait",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "Hate Speech or symbols",
                    subtitle: "Nudity or sexual activity",
                  ),
                  Divider(),
                  ReportInfo(
                    title: "Nudity or Sexual activity",
                    subtitle: "Nudity or sexual activity",
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                    vertical: Sizes.size20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                        Sizes.size20,
                      ),
                      topRight: Radius.circular(
                        Sizes.size20,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Unfollow",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Sizes.size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                    vertical: Sizes.size20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        Sizes.size20,
                      ),
                      bottomRight: Radius.circular(
                        Sizes.size20,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Mute",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Sizes.size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Gaps.v20,
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                    vertical: Sizes.size20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                        Sizes.size20,
                      ),
                      topRight: Radius.circular(
                        Sizes.size20,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Hide",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Sizes.size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onReportTap(context),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size20,
                      vertical: Sizes.size20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(
                          Sizes.size20,
                        ),
                        bottomRight: Radius.circular(
                          Sizes.size20,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Report",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: Sizes.size20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
