import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cagampan_mobprog/constants.dart';

import '../widgets/notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> notifications = [
    {
      'name': 'Summer Cagampan',
      'post': 'Weekend Getaway',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/summer.jpg',
    },
    {
      'name': 'Jam Alfad',
      'post': 'Coffee Date',
      'description': 'Commented on your post.',
      'avatarPath': 'assets/icons/jam.jpg',
    },
    {
      'name': 'Jenny Acabo',
      'post': 'Travel Diaries',
      'description': 'Shared your post.',
      'avatarPath': 'assets/icons/jenny.jpg',
    },
    {
      'name': 'Trixie Acabo',
      'post': 'Morning Routine',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/trixie.jpg',
    },
    {
      'name': 'Milo Acabo',
      'post': 'Favorite Books',
      'description': 'Commented on your post.',
      'avatarPath': 'assets/icons/milo.jpg',
    },
    {
      'name': 'Adrian Albano',
      'post': 'Paris Adventures',
      'description': 'Reacted to your photo.',
      'avatarPath': 'assets/icons/adrian.jpg',
    },
    {
      'name': 'Alfie Cagampan',
      'post': 'Movie Night',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/alfie.jpg',
    },
    {
      'name': 'Denise Marasigan',
      'post': 'Daily Moments',
      'description': 'Shared your post.',
      'avatarPath': 'assets/icons/denise.jpg',
    },
    {
      'name': 'Michal Alerta',
      'post': 'Sunset Views',
      'description': 'Commented on your photo.',
      'avatarPath': 'assets/icons/michal.jpg',
    },
    {
      'name': 'Summer Cagampan',
      'post': 'Study Session',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/summer.jpg',
    },
    {
      'name': 'Trixie Acabo',
      'post': 'Weekend Getaway',
      'description': 'Commented on your post.',
      'avatarPath': 'assets/icons/trixie.jpg',
    },
    {
      'name': 'Haymitch Abernathy',
      'post': 'Coffee Date',
      'description': 'Reacted to your photo.',
      'avatarPath': 'assets/icons/haymitch.jpg',
    },
    {
      'name': 'Jenny Acabo',
      'post': 'Travel Diaries',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/jenny.jpg',
    },
    {
      'name': 'Elizabeth Bennet',
      'post': 'Morning Routine',
      'description': 'Shared your post.',
      'avatarPath': 'assets/icons/elizabeth.jpg',
    },
    {
      'name': 'Fitzwilliam Darcy',
      'post': 'Favorite Books',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/darcy.jpg',
    },
    {
      'name': 'Jam Alfad',
      'post': 'Paris Adventures',
      'description': 'Commented on your photo.',
      'avatarPath': 'assets/icons/jam.jpg',
    },
    {
      'name': 'Maysilee Donner',
      'post': 'Movie Night',
      'description': 'Shared your post.',
      'avatarPath': 'assets/icons/maysilee.jpg',
    },
    {
      'name': 'Katniss Everdeen',
      'post': 'Daily Moments',
      'description': 'Liked your post.',
      'avatarPath': 'assets/icons/katniss.jpg',
    },
    {
      'name': 'Denise Marasigan',
      'post': 'Sunset Views',
      'description': 'Reacted to your photo.',
      'avatarPath': 'assets/icons/denise.jpg',
    },
    {
      'name': 'George Weasley',
      'post': 'Study Session',
      'description': 'Commented on your post.',
      'avatarPath': 'assets/icons/george.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackground,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (context, index) =>
            const Divider(color: appSurface, thickness: 1),
        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationWidget(
            name: notification['name']!,
            post: notification['post']!,
            description: notification['description']!,
            avatarPath: notification['avatarPath']!,
          );
        },
      ),
    );
  }
}
