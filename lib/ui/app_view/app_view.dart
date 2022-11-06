import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/design/app_colors.dart';
import 'package:rental_car_app/ui/favourites/favorites_screen.dart';
import 'package:rental_car_app/ui/home_screens/home/home_screen.dart';
import 'package:rental_car_app/ui/profile/profile_screen.dart';
import 'package:rental_car_app/ui/search/search_screen.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  /// this index is changed if user select a item in the BottomNavigator
  int _currentIndex = 0;

  /// list of screens
  final List<Widget> _screens = const [
    HomeScreen(), // index 0 // finished
    SearchScreen(), // index 1 // *TODO
    FavoritesScreen(), // index 2 // *TODO
    ProfileScreen(), // index 3 // *TODO
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index), // if is selected, we update index
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
