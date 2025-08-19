import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';

class CommonListTileWidget extends StatelessWidget {
  final String? image;
  final String title;
  final GestureTapCallback onTap;

  const CommonListTileWidget({super.key, this.image, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: image != null ? SvgPicture.asset(image!, height: 16) : null,
          onTap: onTap,
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
          ),
        ),
        Divider(color: ColorHelper.dividerColor),
      ],
    );
  }
}
