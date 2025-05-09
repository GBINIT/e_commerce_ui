// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:e_commerce/utils/slider.dart';
import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/profile_page.dart';
import 'package:e_commerce/pages/shop_page.dart';
import 'package:e_commerce/pages/wishlist_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _pages = [
    ShopPage(),
    WishlistPage(),
    CartPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("EVALY"),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add),
          )
        ],
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.menu))),
      ),

      //code for drawer
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 165, 162, 162),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              child: Text("Welcom to EVALY"),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "Info",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),

      body: _pages[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        onTap: onTap, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
    );
  }
}
