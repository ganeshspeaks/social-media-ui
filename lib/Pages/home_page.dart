import 'package:flutter/material.dart';
import 'package:social_media/Tabs/profile.dart';
import 'package:social_media/Tabs/chat_section.dart';
import 'package:social_media/Tabs/create_posts.dart';
import 'package:social_media/Tabs/home_feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  final List<Widget> pages =[
    const HomeFeed(),
    const CreatePost(),
    const ChatSection(),
    const AboutMe(),
  ];

  void onTabTapped(int index){
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedTab],

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Create'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chat',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

        currentIndex: _selectedTab,
        onTap: onTabTapped,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      ),

    );
  }
}