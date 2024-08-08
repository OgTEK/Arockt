//import 'package:carousel_slider/carousel_slider.dart'as carousel_controller;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../components/grid_property_card.dart';
import '/components/propertycard.dart';
import '/components/searchandfilter.dart';
import '/components/loc_profile.dart';
import 'package:arockt/components/agentcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 6, // Number of tabs
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                LocProfile(),
                SearchFilter(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: TabBar(
                    indicatorColor: Color(0XFF998675),
                    unselectedLabelColor:
                        Color(0XFFC4C4C4), //  color: const Color(0XFF25201C),

                    labelColor: Color(0XFFC4C4C4),
                    tabAlignment: TabAlignment.start,
                    isScrollable:
                        true, // Allows scrolling if there are many tabs
                    tabs: [
                      Tab(text: 'Best'),
                      Tab(text: '1 Bedroom'),
                      Tab(text: '2 Bedroom'),
                      Tab(text: '3 Bedroom'),
                      Tab(text: 'Selfcon'),
                      Tab(text: 'Shortlets'),
                      // Tab(text: 'Popular'),
                    ],
                  ),
                ), //tabs setup and styles
                Expanded(
                  child: TabBarView(
                    children: [
                      BestTab(),
                      PopularTab(),
                      ImmediateTab(),
                      NewTab(),
                      ProfitableTab(),
                      NotificationsTab()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BestTab extends StatelessWidget {
  const BestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // CarouselSlider(
          //     options: CarouselOptions(
          //       height: 450.0,
          //       enableInfiniteScroll: true,
          //       autoPlay: true,
          //       enlargeCenterPage: true,
          //       viewportFraction: 0.8,
          //       aspectRatio: 16 / 9,
          //       initialPage: 0,
          //       enlargeFactor: 0.2,
          //     ),
          //     items: List.generate(8, (index) {
          //       return Builder(builder: (BuildContext) {
          //         return PropertyCardLarge(
          //           index: index,
          //           propertyName: "Seaside, Vista Lodge",
          //           rating: '4.5',
          //           rooms: "6 bedrooms",
          //           price: "1,920",
          //           tenure: "per month",
          //           propertyImage: "House1.png",
          //           size: "714m2",
          //         );
          //       });
          //     })),
          SizedBox(
            height: 450,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: PropertyCardLarge(
                    index: index,
                    propertyName: "Seaside, Vista Lodge",
                    rating: '4.5',
                    rooms: "6 bedrooms",
                    price: "1,920",
                    tenure: "per month",
                    propertyImage: "House1.png",
                    size: "714m2",
                  ),
                );
              },
            ),
          ),
          const Gap(2),
          SizedBox(
            height: 164,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: AgentCard(
                    index: 3,
                    Name: "James Can",
                    rating: '4.9',
                    AgentImage: "House1.png",
                  ),
                );
              },
            ),
          ),
          const Gap(24),
        ],
      ),
    );
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: PropertyCardLarge(
            index: index,
            propertyName: "Seaside, Vista Lodge",
            rating: '4.5',
            rooms: "6 bedrooms",
            price: "1,920",
            tenure: "per month",
            propertyImage: "House1.png",
            size: "714m2",
          ),
        );
      },
    );
  }
}

class PopularTab extends StatelessWidget {
  const PopularTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: PropertyCardLarge(
            index: index,
            propertyName: "Seaside, Vista Lodge",
            rating: '4.5',
            rooms: "6 bedrooms",
            price: "1,920",
            tenure: "per month",
            propertyImage: "House1.png",
            size: "714m2",
          ),
        );
      },
    );
  }
}

class ImmediateTab extends StatelessWidget {
  const ImmediateTab({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: 4,
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(left: 16),
    //       child: GridPropertyCard(
    //         index: index,
    //         propertyName: "Seaside, Vista Lodge",
    //         rating: '4.5',
    //         rooms: "6 bedrooms",
    //         price: "1,920",
    //         tenure: "per month",
    //         propertyImage: "House1.png",
    //         size: "714m2", address: '',
    //       ),
    //     );
    //   },
    // );

    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 11,
          itemBuilder: (context, index) {
            return GridPropertyCard(
              index: index,
              propertyName: "Seaside, Vista Lodge",
              rating: '4.5',
              rooms: "6 bedrooms",
              price: "1,920",
              tenure: "per month",
              propertyImage: "House1.png",
              size: "714m2",
              address: '',
            );
          },
        ));
  }
}

class NewTab extends StatelessWidget {
  const NewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return GridPropertyCard(
              index: index,
              propertyName: "Seaside, Vista Lodge",
              rating: '4.5',
              rooms: "6 bedrooms",
              price: "1,920",
              tenure: "per month",
              propertyImage: "House1.png",
              size: "714m2",
              address: '',
            );
          },
        ));
  }
}

class ProfitableTab extends StatelessWidget {
  const ProfitableTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return GridPropertyCard(
              index: index,
              propertyName: "Seaside, Vista Lodge",
              rating: '4.5',
              rooms: "6 bedrooms",
              price: "1,920",
              tenure: "per month",
              propertyImage: "House1.png",
              size: "714m2",
              address: '',
            );
          },
        ));
  }
}

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 13,
          itemBuilder: (context, index) {
            return GridPropertyCard(
              index: index,
              propertyName: "Seaside, Vista Lodge",
              rating: '4.5',
              rooms: "6 bedrooms",
              price: "1,920",
              tenure: "per month",
              propertyImage: "House1.png",
              size: "714m2",
              address: '',
            );
          },
        ));
  }
}
