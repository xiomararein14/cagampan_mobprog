import 'package:material_ui/material_ui.dart';
import 'package:cagampan_mobprog/constants.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> friends = [
      {'name': 'Charlotte Bennett', 'avatar': 'assets/icons/charlotte.jpg'},
      {'name': 'Amelia Rose', 'avatar': 'assets/icons/amelia.jpg'},
      {'name': 'Summer Cagampan', 'avatar': 'assets/icons/summer.jpg'},
      {'name': 'Fitzwilliam Darcy', 'avatar': 'assets/icons/darcy.jpg'},
      {'name': 'Jenny Acabo', 'avatar': 'assets/icons/jenny.jpg'},
      {'name': 'Adrian Albano', 'avatar': 'assets/icons/adrian.jpg'},
      {'name': 'Haymitch Abernathy', 'avatar': 'assets/icons/haymitch.jpg'},
      {'name': 'Maysilee Donner', 'avatar': 'assets/icons/maysilee.jpg'},
      {'name': 'George Weasley', 'avatar': 'assets/icons/george.jpg'},
      {'name': 'Trixie Acabo', 'avatar': 'assets/icons/trixie.jpg'},
      {'name': 'Elizabeth Bennet', 'avatar': 'assets/icons/elizabeth.jpg'},
      {'name': 'Milo Acabo', 'avatar': 'assets/icons/milo.jpg'},
      {'name': 'Jam Alfad', 'avatar': 'assets/icons/jam.jpg'},
      {'name': 'Alfie Cagampan', 'avatar': 'assets/icons/alfie.jpg'},
      {'name': 'Denise Marasigan', 'avatar': 'assets/icons/denise.jpg'},
      {'name': 'Michal Alerta', 'avatar': 'assets/icons/michal.jpg'},
      {'name': 'Katniss Everdeen', 'avatar': 'assets/icons/katniss.jpg'},
    ];

    return Container(
      color: appBackground,
      child: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: friends.length,
        separatorBuilder: (context, index) =>
            const Divider(color: appSurface, thickness: 1),
        itemBuilder: (context, index) {
          final friend = friends[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: appSurface,
              backgroundImage: AssetImage(friend['avatar']!),
            ),
            title: Text(
              friend['name']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: appTextPrimary,
              ),
            ),
            subtitle: const Text(
              'Friend',
              style: TextStyle(color: appTextSecondary),
            ),
            trailing: const Icon(Icons.more_horiz, color: fbSecondary),
          );
        },
      ),
    );
  }
}
