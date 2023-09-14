import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_helper/utils/colors.dart';
import 'package:social_media_helper/views/screens/auth/signup_screen.dart';
import 'package:social_media_helper/views/screens/home_screen.dart';
import 'package:social_media_helper/views/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.15,
                ),
                Text(
                  "We're glad to see you again! Login your account.",
                  style: GoogleFonts.roboto(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: titleTextColor,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                CustomTextField(
                  showHeaderText: true,
                  headerText: "Your Email",
                  borderradius: 5,
                  bordercolor: Colors.transparent,
                  widh: double.infinity,
                  height: 0.07,
                  onlyborder: Colors.grey.shade400,
                  hinttext: "Enter your email",
                  hintColor: Colors.grey,
                  fontsize: 16,
                  obscureText: false,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                CustomTextField(
                  showHeaderText: true,
                  headerText: "Your Secret Password",
                  borderradius: 5,
                  bordercolor: Colors.transparent,
                  widh: double.infinity,
                  height: 0.07,
                  onlyborder: Colors.grey.shade400,
                  hinttext: "Enter your password",
                  hintColor: Colors.grey,
                  fontsize: 16,
                  obscureText: true,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: const Text(
                    "Login Account",
                    style: TextStyle(
                      color: buttonTextColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      minimumSize: const Size(double.infinity, 50)),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Divider(color: sElementsAndBorderColor, thickness: 0.7),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Not a Member?",
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.5,
                    color: titleTextColor,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.012,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ));
                  },
                  child: Container(
                    width: size.width / 1.5,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: sElementsAndBorderColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                        child: Text(
                      "Create a Account",
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: buttonTextColor,
                      ),
                    )),
                  ),
                )
              ],
            )),
      ),
    ));
  }
}
