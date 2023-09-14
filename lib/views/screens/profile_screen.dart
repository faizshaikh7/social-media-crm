import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_helper/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map<String, dynamic> btnNamesAndIcons = {
    '': Icons.abc,
    '': Icons.abc,
    '': Icons.abc,
  };

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile & Settings",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: textColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height / 25,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const CircleAvatar(
                backgroundColor: bgColor,
                backgroundImage: NetworkImage(
                    "https://stickerswiki.ams3.cdn.digitaloceanspaces.com/MemojiiOS13/148932.512.webp"),
                maxRadius: 70,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                // height: MediaQuery.of(context).size.height / 30,
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    _titleButton(
                      Icons.person,
                      "View Profile",
                      () {},
                    ),
                    _titleButton(
                      Icons.support_agent_outlined,
                      "Support",
                      () {},
                    ),
                    _titleButton(
                      Icons.logout,
                      "Logout",
                      () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _titleButton(
    IconData icon,
    String btnName,
    Function btnFunc,
  ) {
    return GestureDetector(
      onTap: () {
        btnFunc();
      },
      child: ListTile(
        horizontalTitleGap: 8,
        leading: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(icon),
            )),
        title: Text(btnName),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
      ),
    );
  }
}
