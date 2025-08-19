import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';
import 'package:my_flyn/src/common/widgets/custom_text_field_widget.dart';

class SetPasswordPage extends StatefulWidget {
  const SetPasswordPage({super.key});

  @override
  State<SetPasswordPage> createState() => _SetPasswordPageState();
}

class _SetPasswordPageState extends State<SetPasswordPage> {

  TextEditingController defaultPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController verifyPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: ColorHelper.bgColor,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringHelper.setPassword,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),

            // Default
            const SizedBox(height: 40),
            CustomTextFormField(
              label: StringHelper.defaultPassword,
              textController: defaultPasswordController,
              hintText: StringHelper.defaultPasswordHint,
            ),

            // New
            const SizedBox(height: 20),
            CustomTextFormField(
              label: StringHelper.newPassword,
              textController: newPasswordController,
              hintText: StringHelper.newPasswordHint,
            ),

            // Verify
            const SizedBox(height: 20),
            CustomTextFormField(
              label: StringHelper.verifyPassword,
              textController: verifyPasswordController,
              hintText: StringHelper.verifyPasswordHint,
            ),

            // Save
            const Spacer(),
            Container(
              height: 48,
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              decoration: BoxDecoration(
                color: Color(0xffcecece),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  StringHelper.complete,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
