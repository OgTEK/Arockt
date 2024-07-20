import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AgentCard extends StatelessWidget {
  final int index;
  final String Name;
  final String AgentImage;
  final String rating;

  const AgentCard({
    super.key,
    required this.index,
    required this.Name,
    required this.AgentImage,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 110,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/House1.png',
                  // 'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
          ),
          Gap(12),
          Container(
            // width: 130,
            // height: 180,
            // color: Color(0xFF25201C),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Name,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xFFC4C4C4),
                  ),
                ),
                Gap(4),
                Text(
                  rating,
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: const Color(0xFFA1A7B0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
