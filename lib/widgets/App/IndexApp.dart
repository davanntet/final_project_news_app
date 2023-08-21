import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/widgets/follow/followe.dart';
import 'package:final_project_news_app/widgets/follow/followpage.dart';
import 'package:final_project_news_app/widgets/home/HomePage.dart';
import 'package:final_project_news_app/widgets/profile/ProfilePage.dart';
import 'package:final_project_news_app/widgets/search/SearchPage.dart';
import 'package:flutter/material.dart';
import '../notification/NotifactionPage.dart';

class IndexApp extends StatefulWidget {
  const IndexApp({super.key});
  @override
  State<IndexApp> createState() => _IndexAppState();
}

class _IndexAppState extends State<IndexApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          SearchPage(),
          FollowPage(),
          NotificationPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          useLegacyColorScheme: false,
          fixedColor: AppColors.blue,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image(
                  image: _selectedIndex == 0
                      ? const AssetImage('assets/bottoms/home1.png')
                      : const AssetImage('assets/bottoms/home0.png'),
                  color: _selectedIndex == 0
                      ? AppColors.blue
                      : AppColors.greyscale,
                  width: 24,
                  height: 24),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image(
                  image: _selectedIndex == 1
                      ? const AssetImage('assets/bottoms/search1.png')
                      : const AssetImage('assets/bottoms/search0.png'),
                  color: _selectedIndex == 1
                      ? AppColors.blue
                      : AppColors.greyscale,
                  width: 24,
                  height: 24),
              label: "Explorer",
            ),
             const BottomNavigationBarItem(
              icon:  Icon(Icons.person_add_alt,),
              activeIcon:  Icon(Icons.person_add_alt_rounded,color: AppColors.blue),
              
              label: "Follow",
            ),
            BottomNavigationBarItem(
              icon: Image(
                  image: _selectedIndex == 3
                      ? const AssetImage('assets/bottoms/notification1.png')
                      : const AssetImage('assets/bottoms/notification0.png'),
                  color: _selectedIndex == 3
                      ? AppColors.blue
                      : AppColors.greyscale,
                  width: 24,
                  height: 24),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: Image(
                  image: _selectedIndex == 4
                      ? const AssetImage('assets/bottoms/profile1.png')
                      : const AssetImage('assets/bottoms/profile0.png'),
                  color: _selectedIndex == 4
                      ? AppColors.blue
                      : AppColors.greyscale,
                  width: 24,
                  height: 24),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
