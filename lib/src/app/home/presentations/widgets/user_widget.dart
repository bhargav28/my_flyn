import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';
import 'package:my_flyn/src/common/constant/image_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Name
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringHelper.hello,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              StringHelper.userName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        // Camera button
        InkWell(
          onTap: () async {
            final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

            debugPrint("Image path: ${pickedFile?.path}");
          },
          splashColor: Colors.transparent,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: ColorHelper.circleButtonColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImageHelper.camera,
                ),

                const SizedBox(height: 5),
                Text(
                  StringHelper.imageRegistration,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorHelper.greyFontColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
