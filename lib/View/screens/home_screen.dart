import 'package:capstone_solo/View/screens/my_course_screen.dart';
import 'package:capstone_solo/View/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget screenBottomNavigation(int index) {
    if (index == 0) {
      return const Center(child: Text('Home'));
    } else if (index == 1) {
      return const MyCourseScreen();
    } else if (index == 2) {
      return const Center(child: Text('History'));
    } else if (index == 3) {
      return const ProfileScreen();
    } else {
      return const Center(child: Text('Index belum terpasang'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screenBottomNavigation(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Container(
                width: 20.5,
                height: 21.51,
                margin: const EdgeInsets.only(bottom: 3.49),
                child: Image.asset(
                  'assets/icon/ic_home.png',
                  color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 20.5,
                height: 21.51,
                margin: const EdgeInsets.only(bottom: 3.49),
                child: Image.asset(
                  'assets/icon/ic_mycourse.png',
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 20.5,
                height: 21.51,
                margin: const EdgeInsets.only(bottom: 3.49),
                child: Image.asset(
                  'assets/icon/ic_history.png',
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 20.5,
                height: 21.51,
                margin: const EdgeInsets.only(bottom: 3.49),
                child: Image.asset(
                  'assets/icon/ic_profile.png',
                  color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                ),
              ),
              label: 'Home',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xff0A58CA),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _changeSelectedNavBar,
        ),
      ),
    );
  }
}
