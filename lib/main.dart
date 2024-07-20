// import 'package:flutter/material.dart';
// import 'components/propertycard.dart';
// import 'components/searchandfilter.dart';
// import 'components/loc_profile.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom Theme App',
//       theme: _buildLightTheme(),
//       darkTheme: _buildDarkTheme(),
//       themeMode: ThemeMode.system, // Automatically switch between light and dark mode
//       home: const MyHomePage(),
//     );
//   }
//
//   ThemeData _buildLightTheme() {
//     return ThemeData(
//       colorScheme: const ColorScheme.light(
//         primary: Color(0xFFF9F9FB),
//         secondary: Color(0xFF998675),
//         surface: Color(0xFFFFFFFF),
//         background: Color(0xFFF9F9FB),
//         error: Color(0xFFB00020),
//         onPrimary: Color(0xFFFFFFFF),
//         onSecondary: Color(0xFF000000),
//         onSurface: Color(0xFF000000),
//         onBackground: Color(0xFF464646),
//         onError: Color(0xFFFFFFFF),
//       ),
//       useMaterial3: true,
//       textTheme: TextTheme(
//         bodyLarge: const TextStyle(fontSize: 18, color: Colors.black),
//         bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
//       ),
//     );
//   }
//
//   ThemeData _buildDarkTheme() {
//     return ThemeData(
//       colorScheme: const ColorScheme.dark(
//         primary: Color(0xFF171411), // Deep Purple
//         secondary: Color(0xFF998675), // Amber
//         surface: Color(0xFF25201C), // Dark Grey
//         background: Color(0xFF171411), // Custom dark background
//         error: Color(0xFFCF6679), // Light Red
//         onPrimary: Color(0xFFFFFFFF), // White
//         onSecondary: Color(0xFF000000), // Black
//         onSurface: Color(0xFFCED0D4), // White
//         onBackground: Color(0xFFC4C4C4), // White
//         onError: Color(0xFF000000), // Black
//       ),
//       useMaterial3: true,
//       textTheme: TextTheme(
//         bodyLarge: const TextStyle(fontSize: 18, color: Colors.white),
//         bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[400]),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const DefaultTabController(
//       length: 5, // Number of tabs
//       child: SafeArea(
//
//         child: Scaffold(
//           // appBar: AppBar(
//           //   title: SizedBox(),
//           // ),
//           body: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               children: [
//                 LocProfile(),
//
//                 SearchFilter(),
//
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 16),
//                   child: TabBar(
//                     indicatorColor: Color(0XFFC4C4C4),
//                     unselectedLabelColor: Color(0XFFC4C4C4),
//                     labelColor: Color(0XFFC4C4C4),
//                     tabAlignment: TabAlignment.start,
//                     isScrollable: true, // Allows scrolling if there are many tabs
//                     tabs: [
//                       Tab(text: 'Best'),
//                       Tab(text: 'Popular'),
//                       Tab(text: 'Immediate'),
//                       Tab(text: 'New'),
//                       Tab(text: 'Profitable'),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: TabBarView(
//                     children: [
//                       BestTab(),
//                       PopularTab(),
//                       ImmediateTab(),
//                       NewTab(),
//                       ProfitableTab(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// }
//
// class BestTab extends StatelessWidget {
//   const BestTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 4,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: PropertyCardLarge(
//             index: index,
//             propertyName: "Seaside, Vista Lodge",
//             rating: '4.5',
//             rooms: "6 bedrooms",
//             price: "1,920",
//             tenure: "per month",
//             propertyImage: "House1.png",
//             size: "714m2",
//           ),
//         );
//       },
//     );
//   }
// }
//
// class PopularTab extends StatelessWidget {
//   const PopularTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(
//       itemCount: 4,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: PropertyCardLarge(
//             index: index,
//             propertyName: "Seaside, Vista Lodge",
//             rating: '4.5',
//             rooms: "6 bedrooms",
//             price: "1,920",
//             tenure: "per month",
//             propertyImage: "House1.png",
//             size: "714m2",
//           ),
//         );
//       },
//     );
//   }
// }
//
// class ImmediateTab extends StatelessWidget {
//   const ImmediateTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Settings Content'));
//   }
// }
//
// class NewTab extends StatelessWidget {
//   const NewTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Profile Content'));
//   }
// }
//
// class ProfitableTab extends StatelessWidget {
//   const ProfitableTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('More Content'));
//   }
// }

import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/favourite.dart';
import 'pages/chat.dart';
import 'pages/settings.dart';
import 'pages/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Theme App',
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.system, // Automatically switch between light and dark mode
      home: const MyHomePage(),
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: Color(0xFFF9F9FB),
        secondary: Color(0xFF998675),
        surface: Color(0xFFFFFFFF),
        background: Color(0xFFF9F9FB),
        error: Color(0xFFB00020),
        onPrimary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFF000000),
        onSurface: Color(0xFF000000),
        onBackground: Color(0xFF464646),
        onError: Color(0xFFFFFFFF),
      ),
      useMaterial3: true,
      textTheme: TextTheme(
        bodyLarge: const TextStyle(fontSize: 18, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF171411), // Deep Purple
        secondary: Color(0xFF998675), // Amber
        surface: Color(0xFF25201C), // Dark Grey
        background: Color(0xFF171411), // Custom dark background
        error: Color(0xFFCF6679), // Light Red
        onPrimary: Color(0xFFFFFFFF), // White
        onSecondary: Color(0xFF000000), // Black
        onSurface: Color(0xFFCED0D4), // White
        onBackground: Color(0xFFC4C4C4), // White
        onError: Color(0xFF000000), // Black
      ),
      useMaterial3: true,
      textTheme: TextTheme(
        bodyLarge: const TextStyle(fontSize: 18, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[400]),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const FavouritesPage(),
    const ChatsPage(),
    const SettingsPage(),
    const ProfilePage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0XFF998675),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color(0XFF25201C),
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0XFFFFFFFF),
            selectedFontSize: 12,
            unselectedFontSize: 10,
            unselectedItemColor: const Color(0XFFD6CFC8),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
