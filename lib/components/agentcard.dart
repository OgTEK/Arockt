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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 140,
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
        ),//image
        Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Name,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: const Color(0xFFC4C4C4),
              ),
            ),
            Gap(36),
            Text(
              rating,
              style: GoogleFonts.sen(
                fontSize: 12,
                color: const Color(0XFFFFD178),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
