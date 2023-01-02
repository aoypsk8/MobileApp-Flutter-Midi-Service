import 'package:flutter/material.dart';
import 'package:flutter_midi/screen/edit.dart';
import 'package:flutter_midi/screen/history.dart';
import 'package:flutter_midi/screen/home.dart';
import 'package:flutter_midi/screen/location.dart';
import 'package:flutter_midi/screen/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;
  List<Widget> pages = [Person(), History(), Home(), Edit(), Location()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "KA-07 EF-222",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          iconSize: 35,
          color: Colors.black,
          icon: const Icon(Icons.menu),
          onPressed: () {
            //somewhere
          },
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            iconSize: 30,
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              //somewhere
            },
          ),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                label: 'Person',
                icon: const Icon(Icons.person),
                activeIcon: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 24,
                  ),
                )),
            BottomNavigationBarItem(
                label: 'History',
                icon: const Icon(Icons.history),
                activeIcon: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.history,
                    size: 24,
                  ),
                )),
            BottomNavigationBarItem(
                label: 'Home',
                icon: const Icon(Icons.home),
                activeIcon: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.home,
                    size: 24,
                  ),
                )),
            BottomNavigationBarItem(
                label: 'Edit',
                icon: const Icon(Icons.edit),
                activeIcon: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 24,
                  ),
                )),
            BottomNavigationBarItem(
                label: 'Location',
                icon: const Icon(Icons.location_disabled),
                activeIcon: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.location_disabled,
                    size: 24,
                  ),
                )),
          ]),
          body: SafeArea(
            child: pages[selectedIndex],
      ),
    );
  }
}
