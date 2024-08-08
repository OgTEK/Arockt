import 'package:arockt/pages/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/propertydetails_component.dart';

class PropertyDetailPage extends StatelessWidget {
  const PropertyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Dialog.svg', // Path to SVG file
                  height: 32.0, // Adjust the height
                  width: 32.0, // Adjust the width
                  //colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn)              // Optional: Apply a color filter
                ),
                onPressed: () {
                  // Define the action when the notification icon is pressed
                },
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
        child: Column(
          children: [
            const PropertyDetailCard(
              index: 1,
              propertyName: "Seaside, Vista Lodge",
              rating: '4.5',
              rooms: "6 bedrooms",
              price: "1,920",
              tenure: "per month",
              propertyImage: "House1.png",
              size: "714m2",
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Marina District is renowned for its stunning views of the Golden Gate Bridge, with Victorian homes, and lively atmosphere.",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  Gap(12),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF25201C),
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
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
                                            pageBuilder: (context, animation, secondaryAnimation) =>
                                            const ChatsPage(),
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
                                          "Host",
                                          style: GoogleFonts.manrope(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: const Color(0xFFA1A7B0)),
                                        ),
                                        const Gap(2),
                                        Text(
                                          "John Drezzy",
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
                                  'assets/icons/Arrow.svg',  // Path to SVG file
                                  height: 18.0,                     // Adjust the height
                                  width: 18.0,                      // Adjust the width
                                  //colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)  // Optional: Apply a color filter
                              ),
                              onPressed: () {
                                // Define the action when the notification icon is pressed
                              },
                            ),
                          ],
                        ),
                      )),
                  Gap(24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        //property name
                        "Conveniences at home",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: const Color(0xFFC4C4C4)),
                      ),
                      Gap(4),
                      Text(
                        "size",
                        style: GoogleFonts.sen(
                          fontSize: 16,
                          color: Color(0xFFA1A7B0),
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Icon(
                        Icons.bed_rounded,
                        size: 20,
                        color: Color(0xFFA1A7B0),
                      ),
                      Gap(4),
                      Text(
                        "rooms",
                        style: GoogleFonts.sen(
                          fontSize: 16,
                          color: Color(0xFFA1A7B0),
                        ),
                      ),
                    ],
                  ),

                  Gap(12),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF25201C),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "for 2 months",
                                          style: GoogleFonts.manrope(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: const Color(0xFFA1A7B0)),
                                        ),
                                        const Gap(2),
                                        Text(
                                          "Total: 4,840",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: const Color(0xFFC4C4C4)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ), //you are here an san francisco
                            const Spacer(),

                            Container(
                              height: 52,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Color(0xFF998675),
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Reservation",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: const Color(0xFFC4C4C4)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
