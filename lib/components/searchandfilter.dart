import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: SizedBox(height: 48,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0XFF25201C), //Theme.of(context).colorScheme.onSurface,  // Using theme color
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),            ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0XFFFFFFFF),
                        size: 24.0,
                      ),
                      const Gap(12),
                      Text(
                        'Enter city or region',
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
            const Gap(16),
            Container(//FILTER BOX
              width: 48,
              height: 48,

              decoration: BoxDecoration(
                color: const Color(0XFF998675),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.filter_list_rounded,
                color: Color(0XFFFFFFFF),
                size: 26.0,
              ),

            ),
          ],

        ),
      ),
    );
  }
}
