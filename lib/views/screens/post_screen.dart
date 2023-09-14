import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_helper/utils/colors.dart';
import 'package:social_media_helper/views/widgets/custom_text_editor.dart';
import 'package:social_media_helper/views/widgets/custom_widgets.dart';
import 'package:video_player/video_player.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({required this.platformName, super.key});
  final String platformName;

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  Uint8List? _file;
  VideoPlayerController? _controller;
  String? outputImageUrl;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leadingWidth: 5,
        centerTitle: true,
        title: Text(
          "Post on ${widget.platformName}",
          style: GoogleFonts.actor(
              fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Upload Content",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    customWidgets.showSnackbar(
                        context, "Service Not Available");
                  },
                  child: Container(
                    width: double.infinity,
                    height: size.height / 8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Image/Video",
                        style: GoogleFonts.aBeeZee(
                          color: Colors.blue.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const CustomTextEditorWidget(),
                SizedBox(height: size.height * 0.05),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      elevation: 0,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
