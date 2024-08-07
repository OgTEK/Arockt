import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../components/propertydetails_component.dart';
import '/components/searchandfilter.dart';
import '/components/loc_profile.dart';
import 'package:arockt/components/agentcard.dart';

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
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Define the action when the message icon is pressed
                },
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            PropertyCardLarge(
              index: 1,
              propertyName: "Seaside, Vista Lodge",
              rating: '4.5',
              rooms: "6 bedrooms",
              price: "1,920",
              tenure: "per month",
              propertyImage: "House1.png",
              size: "714m2",
            ),
            Gap(12),
          ],
        ),
      ),
    ));
  }
}
