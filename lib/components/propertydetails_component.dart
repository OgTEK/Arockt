import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';



class PropertyDetailCard extends StatelessWidget {
  final int index;
  final String propertyName;
  final String propertyImage;
  final String tenure;
  final String rating;
  final String size;
  final String price;
  final String rooms;

  const PropertyDetailCard({
    super.key,
    required this.index,
    required this.propertyName,
    required this.propertyImage,
    required this.tenure,
    required this.rating,
    required this.price,
    required this.rooms,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Property Image Container
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/House1.png',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Stack(
              children: [
                Positioned(

                  top: 8,
                  left: 8,
                  child: IntrinsicWidth(
                    child: Container(
                      // width: 65,
                      // height: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0XFF121212).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(100.0),
                        backgroundBlendMode: BlendMode.darken,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        const Icon(
                        Icons.star,
                        size: 20,
                          color: Color(0XFFFFD178),
                      ),

                          // Gap(0),
                          Text(
                            rating,
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          // Gap(),
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 16,
                  right: 16,
                  child:InkWell(
                    onTap: (){
                      print('>>>>>>>>> clicked');
                    },
                    splashColor: Colors.red,
                    child: const Icon(Icons.favorite_border),
                  )
                ),
              ],
            ), // CONTAINS ratings and favourites
          ),//image container
          // Property Details and Price Container
          const Gap(8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //price
                      propertyName,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color(0xFFC4C4C4),
                      ),
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.square_foot_rounded,
                              size: 20,
                              color: Color(0xFFA1A7B0),
                            ),
                            const Gap(4),
                            Text(
                              size,
                              style: GoogleFonts.sen(
                                fontSize: 16,
                                color: const Color(0xFFA1A7B0),
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        Row(
                          children: [
                            const Icon(
                              Icons.bed_rounded,
                              size: 20,
                              color: Color(0xFFA1A7B0),
                            ),
                            const Gap(4),
                            Text(
                              rooms,
                              style: GoogleFonts.sen(
                                fontSize: 16,
                                color: const Color(0xFFA1A7B0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      //property name
                      price,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: const Color(0xFF998675)),
                    ),
                    const Gap(2),
                    Text(
                      tenure,
                      style: GoogleFonts.manrope(
                          fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
