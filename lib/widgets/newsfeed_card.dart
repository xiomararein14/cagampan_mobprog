import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cagampan_mobprog/constants.dart';
import 'package:cagampan_mobprog/widgets/custom_text.dart';
import 'package:cagampan_mobprog/widgets/post_image.dart';
import 'package:cagampan_mobprog/widgets/profile_avatar.dart';
import 'package:cagampan_mobprog/widgets/post_actions.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final String? imagePath;
  final String? avatarPath;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.imagePath,
    this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      color: appCardColor,
      surfaceTintColor: Colors.transparent,
      elevation: 1,
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(5),
        vertical: ScreenUtil().setHeight(4),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User information
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileAvatar(imagePath: avatarPath ?? 'assets/icons/user.jpg'),

                SizedBox(width: screenUtilWidth),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: screenUtilFontUserNameSize,
                        color: appTextPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: date,
                            fontSize: ScreenUtil().setSp(12),
                            color: appTextSecondary,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(3)),
                          Icon(
                            Icons.public,
                            color: appTextSecondary,
                            size: screenUtilIconSize,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const Icon(Icons.more_horiz, color: fbSecondary),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(8)),

            // Post content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: appTextPrimary,
            ),

            SizedBox(height: ScreenUtil().setHeight(8)),

            // Reusable image widget
            PostImage(imagePath: imagePath),

            // Reusable post actions widget
            PostActions(numOfLikes: numOfLikes),

            // Comment section
            Row(
              children: [
                const ProfileAvatar(
                  imagePath: 'assets/icons/user.jpg',
                  radius: 15,
                ),

                SizedBox(width: ScreenUtil().setWidth(10)),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(12),
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(30),
                    decoration: BoxDecoration(
                      color: appSurface,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: appTextSecondary,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: fbPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
