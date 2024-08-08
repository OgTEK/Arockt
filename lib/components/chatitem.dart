import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/profile.dart';

class ChatItem extends StatelessWidget {
  final int index;
  final String name;
  final String lastMessage;
  final String timestamp;
  final String avatar;

  const ChatItem({
    super.key,
    required this.index,
    required this.name,
    required this.lastMessage,
    required this.timestamp,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //alignment: Alignment.center,
      width: double.maxFinite,
      height: 60,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(24),
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Property Image Container
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ProfilePage(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1, -0.0);
                    const end = Offset.zero;
                    const curve = Curves.ease;

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
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Color(0XFFC4C4C4),
                  backgroundImage: NetworkImage(
                      'https://fiverr-res.cloudinary.com/t_profile_thumb,q_auto,f_auto/attachments/profile/photo/6ad5332ac3cc3ab5a42d1693e6b96f11-813814511665335799449/JPEG_20221009_181623_87510738303705397.jpg'),
                ),
          ],
            ),
          ), //SizedBox(height: 12),
          // Property Details and Price Container
          const Gap(12),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        //price
                        name,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color(0xFFC4C4C4),
                        ),
                      ),
                      const Gap(4),
                      Text(
                        timestamp,
                        style: GoogleFonts.manrope(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF998675)),
                      ),
                    ],
                  ),
              
                  const Gap(8),
                  Text(
                    lastMessage,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sen(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFA1A7B0),
                    ),
                  ),
                  //const Gap(4),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

// const Gap(4),
// Divider(
// height: 4,
// thickness: 6,
// color: Colors.white,
// ),