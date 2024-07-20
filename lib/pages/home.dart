import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '/components/propertycard.dart';
import '/components/searchandfilter.dart';
import '/components/loc_profile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:arockt/components/agentcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5, // Number of tabs
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
                    indicatorColor: Color(0XFFC4C4C4),
                    unselectedLabelColor: Color(0XFFC4C4C4),
                    labelColor: Color(0XFFC4C4C4),
                    tabAlignment: TabAlignment.start,
                    isScrollable:
                        true, // Allows scrolling if there are many tabs
                    tabs: [
                      Tab(text: 'Best'),
                      Tab(text: 'Popular'),
                      Tab(text: 'Immediate'),
                      Tab(text: 'New'),
                      Tab(text: 'Profitable'),
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
          CarouselSlider(
              options: CarouselOptions(
                height: 490.0,
                enableInfiniteScroll: true,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 16 / 9,
                initialPage: 0,
              ),
              items: List.generate(8, (index) {
                return Builder(builder: (BuildContext) {
                  return PropertyCardLarge(
                    index: index,
                    propertyName: "Seaside, Vista Lodge",
                    rating: '4.5',
                    rooms: "6 bedrooms",
                    price: "1,920",
                    tenure: "per month",
                    propertyImage: "House1.png",
                    size: "714m2",
                  );
                });
              })),
          Gap(24),
          Container(
            height: 164,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
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
          Gap(24),

        ],
      ),
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
    return const Center(child: Text('Immediate Content'));
  }
}

class NewTab extends StatelessWidget {
  const NewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('New Content'));
  }
}

class ProfitableTab extends StatelessWidget {
  const ProfitableTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Profitable Content'));
  }
}
