import 'package:flutter/material.dart';
import 'package:social_media_helper/utils/colors.dart';
import 'package:social_media_helper/views/screens/post_screen.dart';
import 'package:social_media_helper/views/widgets/custom_widgets.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key, required this.platformName});
  final String platformName;

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
              colors: [
                bgColor,
                textColor,
              ],
            ),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(117, 83, 49, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/m2.png",
                          width: 250,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            customWidgets.showSnackbar(
                                context, "Message Service is Not Available");
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              minimumSize: const Size(double.infinity, 50)),
                          child: Text(
                            "Message on ${widget.platformName}",
                            style: const TextStyle(color: buttonTextColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // color: Color.fromRGBO(73, 51, 30, 1),
                      color: const Color.fromRGBO(88, 65, 43, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/post.png",
                          width: 250,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                      platformName: widget.platformName),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              // backgroundColor: buttonColor,
                              backgroundColor: Colors.white,
                              elevation: 0,
                              minimumSize: const Size(double.infinity, 50)),
                          child: Text(
                            "Post on ${widget.platformName}",
                            style: const TextStyle(color: buttonTextColor),
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
      ),
    );
  }
}
