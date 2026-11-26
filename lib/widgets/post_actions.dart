import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cagampan_mobprog/constants.dart';
import 'package:cagampan_mobprog/widgets/custom_text.dart';

class PostActions extends StatelessWidget {
  final int? numOfLikes;

  const PostActions({super.key, this.numOfLikes});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Like button
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.thumb_up, color: fbPrimary),
          label: CustomText(
            text: (numOfLikes ?? 0).toString(),
            fontSize: ScreenUtil().setSp(12),
            color: fbPrimary,
          ),
        ),

        // Comment button
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.chat_bubble_outline, color: fbSecondary),
          label: CustomText(
            text: 'Comment',
            fontSize: ScreenUtil().setSp(12),
            color: fbSecondary,
          ),
        ),

        // Share button
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.redo, color: fbSecondary),
          label: CustomText(
            text: 'Share',
            fontSize: ScreenUtil().setSp(12),
            color: fbSecondary,
          ),
        ),
      ],
    );
  }
}
