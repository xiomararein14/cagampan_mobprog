import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cagampan_mobprog/constants.dart';
import 'package:cagampan_mobprog/screens/home_screen.dart';
import 'package:cagampan_mobprog/screens/newsfeed_screen.dart';
import 'package:cagampan_mobprog/screens/notification_screen.dart';
import 'package:cagampan_mobprog/screens/profile_screen.dart';
import 'package:cagampan_mobprog/screens/friends_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Ardently Social",

          // Enhancement 5: Coastal Elegance Theme
          theme: ThemeData(
            useMaterial3: true,
            primaryColor: fbPrimary,
            scaffoldBackgroundColor: appBackground,

            colorScheme: ColorScheme.fromSeed(
              seedColor: fbPrimary,
              primary: fbPrimary,
              secondary: fbSecondary,
              surface: appCardColor,
            ),

            // AppBar
            appBarTheme: const AppBarTheme(
              backgroundColor: appSurface,
              foregroundColor: fbPrimary,
              surfaceTintColor: Colors.transparent,
              elevation: 0,
            ),

            // Newsfeed cards
            cardTheme: CardThemeData(
              color: appCardColor,
              surfaceTintColor: Colors.transparent,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            // Bottom navigation
            bottomNavigationBarTheme:
                const BottomNavigationBarThemeData(
              backgroundColor: appSurface,
              selectedItemColor: fbPrimary,
              unselectedItemColor: appTextSecondary,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
            ),

            // Dividers
            dividerTheme: const DividerThemeData(
              color: appSurface,
              thickness: 1,
            ),

            // Default icons
            iconTheme: const IconThemeData(
              color: fbSecondary,
            ),
          ),

          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/home": (context) => const HomeScreen(),
            "/notification": (context) =>
                const NotificationScreen(),
            "/profile": (context) => const ProfileScreen(),
            "/friends": (context) => const FriendsScreen(),
          },
        );
      },
    );
  }
}