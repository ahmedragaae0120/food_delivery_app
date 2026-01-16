import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/cart/presentation/views/cart_view.dart';
import 'package:food_delivery_app/features/favorite/presentation/view/favorite_view.dart';
import 'package:food_delivery_app/features/home/presentation/views/home_view.dart';
import 'package:food_delivery_app/features/profile/presentation/views/profile_view.dart';

class NavigationHomeView extends StatefulWidget {
  const NavigationHomeView({super.key});

  @override
  State<NavigationHomeView> createState() => _NavigationHomeViewState();
}

class _NavigationHomeViewState extends State<NavigationHomeView> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeView(),
    const FavoriteView(),
    const CartView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => {
          setState(() {
            _selectedIndex = index;
          }),
        },
      ),
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
