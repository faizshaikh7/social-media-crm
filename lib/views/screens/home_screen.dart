import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_helper/utils/colors.dart';
import 'package:social_media_helper/views/screens/profile_screen.dart';
import 'package:social_media_helper/views/screens/select_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          "Dashboard",
          style: GoogleFonts.actor(
              fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: buttonTextColor,
                        width: 0.5,
                      ),
                      color: bgColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Image.network(
                        "https://stickerswiki.ams3.cdn.digitaloceanspaces.com/MemojiiOS13/148932.512.webp"),
                  ),
                ),
              )
              // child: CircleAvatar(
              //   backgroundColor: Colors.grey.shade300,
              //   backgroundImage: const NetworkImage(
              //     "https://stickerswiki.ams3.cdn.digitaloceanspaces.com/MemojiiOS13/148932.512.webp",
              //   ),
              //   minRadius: 25,
              // ),
              ),
          const SizedBox(
            width: 10, //
          )
        ],
      ),
      body: const Center(
        child: Text("Not Available"),
      ),
      drawer: Container(
        width: size.width / 5,
        child: Drawer(
          backgroundColor: buttonColor,
          child: Padding(
            // padding: EdgeInsets.symmetric(vertical: size.height / 7.5),
            padding: EdgeInsets.symmetric(vertical: size.height / 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectScreen(
                          platformName: "Facebook",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Icon(FontAwesomeIcons.facebook),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectScreen(
                          platformName: "Instagram",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Icon(FontAwesomeIcons.instagram),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectScreen(
                          platformName: "Twitter (X)",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Icon(FontAwesomeIcons.twitter),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectScreen(
                          platformName: "LinkedIn",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Icon(FontAwesomeIcons.linkedinIn),
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
