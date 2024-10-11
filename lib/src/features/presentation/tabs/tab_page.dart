import 'package:delivery_app/src/features/presentation/tabs/explore_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/favorite_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_Page.dart';
import 'package:delivery_app/src/features/presentation/tabs/profile_page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  //Lista con las paginas que vamos a mostrar
  List<Widget> pages = [
    ExplorePage(),
    MyOrderPage(),
    FavoritePage(),
    ProfilePage()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage =
                  value; //El indice del elemento seleccionado en el button naviation
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'EXPLORE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment), label: 'MY ORDERS'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'FAVORITES'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: 'MY PROFILE')
          ]),
      body: pages[currentPage],
    );
  }
}
