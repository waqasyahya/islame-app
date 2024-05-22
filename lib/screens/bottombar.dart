import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utils/Routes.dart';
import 'HomeView.dart';
import 'Profile.dart';
import 'SearchView.dart';



class HomeScreen extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Bottom Navigation'),
      ),
      body: Obx(() {
        switch (bottomNavController.selectedIndex.value) {
          case 0:
            return HomeView();
          case 1:
            return SearchView();
          case 2:
            return profileView();
          default:
            return HomeView();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: bottomNavController.selectedIndex.value,
        onTap: bottomNavController.changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      )),
    );
  }
}





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.HOME,
      getPages: AppRoutes.routes,
      home: HomeScreen(),
    );
  }
}
