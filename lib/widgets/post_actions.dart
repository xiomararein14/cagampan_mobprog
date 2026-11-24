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
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.thumb_up, color: fbPrimary),
          label: CustomText(
            text: (numOfLikes ?? 0).toString(),
            fontSize: ScreenUtil().setSp(12),
            color: fbDarkPrimary,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.chat_bubble_outline, color: fbDarkPrimary),
          label: CustomText(
            text: 'Comment',
            fontSize: ScreenUtil().setSp(12),
            color: fbDarkPrimary,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.redo, color: fbDarkPrimary),
          label: CustomText(
            text: 'Share',
            fontSize: ScreenUtil().setSp(12),
            color: fbDarkPrimary,
          ),
        ),
      ],
    );
  }
}
