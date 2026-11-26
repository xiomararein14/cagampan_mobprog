import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cagampan_mobprog/widgets/custom_text.dart';
import 'package:cagampan_mobprog/constants.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    required this.avatarPath,
  });

  final String name;
  final String post;
  final String description;
  final String avatarPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          // User profile picture
          CircleAvatar(
            radius: ScreenUtil().setSp(25),
            backgroundColor: appSurface,
            backgroundImage: AssetImage(avatarPath),
          ),

          SizedBox(width: ScreenUtil().setSp(12)),

          // Notification information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(16),
                  color: appTextPrimary,
                  fontWeight: FontWeight.bold,
                ),

                SizedBox(height: ScreenUtil().setHeight(3)),

                CustomText(
                  text: 'Post: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: fbSecondary,
                ),

                SizedBox(height: ScreenUtil().setHeight(2)),

                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: appTextSecondary,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),

          const Icon(Icons.more_horiz, color: fbSecondary),
        ],
      ),
    );
  }
}
