import 'package:flutter/material.dart';
import 'package:arockt/components/favpropertycard.dart';
import '../components/searchandfilter.dart';
import '/components/loc_profile.dart';
import 'home.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              LocProfile(),
              Expanded(
                child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        itemCount: 12,
                        //scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                            child: FavPropertyCard(
                              index: index,
                              address: '2 ol marian,',
                              propertyName: "Seaside, Vista Lodge",
                              rating: '4.5',
                              rooms: "6 bedrooms",
                              price: "1,923",
                              tenure: "per month",
                              propertyImage: "House1.png",
                              size: "714m2",
                            ),
                          );
                        },
                      ),
                    ),
              ),
           ],
          ),
        ),
      ),
    );

  }
}
