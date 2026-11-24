import 'package:cagampan_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Charlotte Bennett',
          postContent: 'Finding beauty in the little things.',
          date: '2 hours ago',
          numOfLikes: 128,
          avatarPath: 'assets/images/charlotte.jpg',
        ),
        NewsfeedCard(
          userName: 'Amelia Rose',
          postContent: 'A little piece of heaven in Paris. #ParisDiaries',
          date: 'November 24, 2026',
          numOfLikes: 356,
          imagePath: 'assets/images/paris.jpg',
          avatarPath: 'assets/images/amelia.jpg',
        ),
      ],
    );
  }
}
