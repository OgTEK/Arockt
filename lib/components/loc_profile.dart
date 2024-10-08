import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/profile.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LocProfile extends StatelessWidget {
  const LocProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const ProfilePage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1, -0.0);
                            const end = Offset.zero;
                            const curve = Curves.fastOutSlowIn;

                            final tween = Tween(begin: begin, end: end);
                            final curvedAnimation = CurvedAnimation(
                              parent: animation,
                              curve: curve,
                            );

                            return SlideTransition(
                              position: tween.animate(curvedAnimation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0XFFC4C4C4),
                          backgroundImage: NetworkImage(
                              'https://fiverr-res.cloudinary.com/t_profile_thumb,q_auto,f_auto/attachments/profile/photo/6ad5332ac3cc3ab5a42d1693e6b96f11-813814511665335799449/JPEG_20221009_181623_87510738303705397.jpg'),
                        )
                      ],
                    ),
                  ),
                  Gap(8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You are here",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color(0xFFA1A7B0)),
                      ),
                      const Gap(2),
                      Text(
                        "San Francisco",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: const Color(0xFFC4C4C4)),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ), //you are here an san francisco
          const Spacer(),

          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Bell.svg', // Path to SVG file
              height: 32.0, // Adjust the height
              width: 32.0, // Adjust the width
              colorFilter: const ColorFilter.mode(Colors.white,
                  BlendMode.srcIn), // Optional: Apply a color filter
            ),
            onPressed: () {
              //print("this has been clicked");
              Fluttertoast.showToast(
                  msg: "This is a toast message",
                  toastLength: Toast
                      .LENGTH_SHORT, // Duration: LENGTH_SHORT or LENGTH_LONG
                  gravity: ToastGravity.BOTTOM, // Position: TOP, BOTTOM, CENTER
                  backgroundColor: Colors.black, // Background color
                  textColor: Colors.white, // Text color
                  fontSize: 16.0 // Font size
                  );
            },
          )
        ],
      ),
    );
  }
}
