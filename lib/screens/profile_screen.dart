import 'package:material_ui/material_ui.dart';
import 'package:cagampan_mobprog/constants.dart';
import 'package:cagampan_mobprog/widgets/newsfeed_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackground,
      child: ListView(
        children: [
          // Cover photo and profile picture
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/cover.jpg',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: -45,
                child: CircleAvatar(
                  radius: 53,
                  backgroundColor: appBackground,
                  child: CircleAvatar(
                    radius: 49,
                    backgroundImage: AssetImage('assets/icons/user.jpg'),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 55),

          // User information
          const Center(
            child: Text(
              'Xiomara Cagampan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: appTextPrimary,
              ),
            ),
          ),

          const SizedBox(height: 5),

          const Center(
            child: Text(
              'most ardently',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: appTextSecondary,
              ),
            ),
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              '17 friends',
              style: TextStyle(fontWeight: FontWeight.w600, color: fbSecondary),
            ),
          ),

          const SizedBox(height: 15),

          // Edit Profile button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: fbPrimary,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          const Divider(color: appSurface, thickness: 1),

          // About section
          const Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: appTextPrimary,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.school, color: fbSecondary),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Studies at National University',
                        style: TextStyle(fontSize: 14, color: appTextPrimary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(color: appSurface, thickness: 1),

          // Personal posts
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Posts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: appTextPrimary,
              ),
            ),
          ),

          const NewsfeedCard(
            userName: 'Xiomara Cagampan',
            postContent: 'All things are wild and free.',
            date: 'November 27, 2026',
            numOfLikes: 143,
            imagePath: 'assets/images/post1.jpg',
            avatarPath: 'assets/icons/user.jpg',
          ),

          const NewsfeedCard(
            userName: 'Xiomara Cagampan',
            postContent: 'nostalgia will always be a part of me.',
            date: 'November 25, 2026',
            numOfLikes: 128,
            imagePath: 'assets/images/post2.jpg',
            avatarPath: 'assets/icons/user.jpg',
          ),
        ],
      ),
    );
  }
}
