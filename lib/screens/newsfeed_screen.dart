import 'package:cagampan_mobprog/widgets/newsfeed_card.dart';
import 'package:cagampan_mobprog/constants.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> posts = [
      {
        'userName': 'Charlotte Bennett',
        'postContent': 'Finding beauty in the little things.',
        'date': 'November 26, 2026',
        'numOfLikes': 128,
        'avatarPath': 'assets/icons/charlotte.jpg',
      },
      {
        'userName': 'Amelia Rose',
        'postContent': 'A little piece of heaven in Paris. #ParisDiaries',
        'date': 'November 25, 2026',
        'numOfLikes': 356,
        'imagePath': 'assets/images/paris.jpg',
        'avatarPath': 'assets/icons/amelia.jpg',
      },
      {
        'userName': 'Summer Cagampan',
        'postContent': 'SkullPanda is the best!',
        'date': 'November 24, 2026',
        'numOfLikes': 245,
        'imagePath': 'assets/images/skullpanda.jpg',
        'avatarPath': 'assets/icons/summer.jpg',
      },
      {
        'userName': 'Fitzwilliam Darcy',
        'postContent': 'A peaceful afternoon at Pemberley.',
        'date': 'November 23, 2026',
        'numOfLikes': 512,
        'avatarPath': 'assets/icons/darcy.jpg',
      },
      {
        'userName': 'Jenny Acabo',
        'postContent': 'Family time is the best time.',
        'date': 'November 22, 2026',
        'numOfLikes': 250,
        'imagePath': 'assets/images/family.jpg',
        'avatarPath': 'assets/icons/jenny.jpg',
      },
      {
        'userName': 'Adrian Albano',
        'postContent': 'Come have a boxing session with me! #FitnessGoals',
        'date': 'November 22, 2026',
        'numOfLikes': 432,
        'imagePath': 'assets/images/boxing.jpg',
        'avatarPath': 'assets/icons/adrian.jpg',
      },
      {
        'userName': 'Haymitch Abernathy',
        'postContent': 'Finally, a day without any trouble.',
        'date': 'November 20, 2026',
        'numOfLikes': 198,
        'avatarPath': 'assets/icons/haymitch.jpg',
      },
      {
        'userName': 'Maysilee Donner',
        'postContent': 'Never forget to stand up for yourself.',
        'date': 'November 20, 2026',
        'numOfLikes': 367,
        'avatarPath': 'assets/icons/maysilee.jpg',
      },
      {
        'userName': 'George Weasley',
        'postContent': 'A little mischief never hurt anyone!',
        'date': 'November 18, 2026',
        'numOfLikes': 625,
        'imagePath': 'assets/images/mischief.jpg',
        'avatarPath': 'assets/icons/george.jpg',
      },
      {
        'userName': 'Trixie Acabo',
        'postContent': 'Lovely day for a walk in the park.',
        'date': 'November 17, 2026',
        'numOfLikes': 140,
        'avatarPath': 'assets/icons/trixie.jpg',
      },
      {
        'userName': 'Elizabeth Bennet',
        'postContent': 'Cute little things make life beautiful.',
        'date': 'November 17, 2026',
        'numOfLikes': 894,
        'imagePath': 'assets/images/cute_things.jpg',
        'avatarPath': 'assets/icons/elizabeth.jpg',
      },
      {
        'userName': 'Milo Acabo',
        'postContent': 'I love my big sisters so much!',
        'date': 'November 16, 2026',
        'numOfLikes': 54,
        'imagePath': 'assets/images/pawmily.jpg',
        'avatarPath': 'assets/icons/milo.jpg',
      },
    ];

    return Container(
      color: appBackground,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        itemCount: posts.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final post = posts[index];

          return NewsfeedCard(
            userName: post['userName'],
            postContent: post['postContent'],
            date: post['date'],
            numOfLikes: post['numOfLikes'],
            imagePath: post['imagePath'],
            avatarPath: post['avatarPath'],
          );
        },
      ),
    );
  }
}
