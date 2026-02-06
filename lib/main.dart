import 'package:alltrails/features/discover/screens/discover.dart';
import 'package:alltrails/features/home/screens/homepage.dart';
import 'package:alltrails/features/profile/screens/profile.dart';
import 'package:alltrails/features/search/screens/LocatioSearch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final screens = [HomePage(), LocationSearch(), Discover(), Profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              );
            }
            return null;
          }),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Trails',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 5, 128, 66),
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white,)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app, color: Colors.white,)),
          ],
        ),

        body: screens[selectedIndex],

        bottomNavigationBar: NavigationBar(
          backgroundColor: Color.fromARGB(255, 27, 27, 27),

          // indicatorColor: Colors.amber,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.search), label: "Search"),
            NavigationDestination(icon: Icon(Icons.explore), label: "Discover"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          surfaceTintColor: Colors.transparent,
        ),
      ),
    );
  }
}
