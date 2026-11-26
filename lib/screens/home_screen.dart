import 'package:cagampan_mobprog/screens/notification_screen.dart';
import 'package:cagampan_mobprog/screens/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cagampan_mobprog/constants.dart';
import 'package:cagampan_mobprog/screens/newsfeed_screen.dart';
import 'package:cagampan_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';
import 'package:cagampan_mobprog/screens/friends_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  // Enhancement 2: Dynamic AppBar titles
  final List<String> _titles = [
    'Ardently Social',
    'Friends',
    'Notifications',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackground,

      // AppBar
      appBar: AppBar(
        backgroundColor: appSurface,
        surfaceTintColor: Colors.transparent,
        shadowColor: fbLightPrimary,
        elevation: 0,
        title: CustomText(
          text: _titles[_selectedIndex],
          fontSize: ScreenUtil().setSp(25),
          color: fbPrimary,
          fontFamily: 'Klavika',
          fontWeight: FontWeight.w700,
        ),
      ),

      // Application screens
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsfeedScreen(),
          FriendsScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),

      // Enhancement 3: Additional navigation items
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: appSurface,
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: fbPrimary,
        unselectedItemColor: appTextSecondary,
        currentIndex: _selectedIndex,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
