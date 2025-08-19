import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';
import 'package:my_flyn/src/common/constant/image_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';
import 'package:my_flyn/src/common/widgets/custom_text_field_widget.dart';

class BasicInformationPage extends StatefulWidget {
  const BasicInformationPage({super.key});

  @override
  State<BasicInformationPage> createState() => _BasicInformationPageState();
}

class _BasicInformationPageState extends State<BasicInformationPage> {

  TextEditingController idController = TextEditingController(text: "asdf123");
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nickController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController workController = TextEditingController();

  String fileName = "";

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringHelper.basicInfo,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),

            // Id
            const SizedBox(height: 40),
            CustomTextFormField(
              label: StringHelper.id,
              readOnly: true,
              textController: idController,
            ),

            // Email
            const SizedBox(height: 20),
            CustomTextFormField(
              label: StringHelper.email,
              textController: emailController,
              onChange: (val) {
                final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                if (emailRegex.hasMatch(val)) {
                  debugPrint("Valid email");
                } else {
                  debugPrint("Invalid email");
                }
              },
            ),

            // phone number
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: CustomTextFormField(
                    label: StringHelper.phone,
                    textController: phoneController,
                    keyboardType: TextInputType.phone,
                    textInputFormatter: FilteringTextInputFormatter.digitsOnly,
                  ),
                ),

                InkWell(
                  onTap: () {
                    phoneController.clear();
                  },
                  child: Container(
                    height: 52,
                    width: 85,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: ColorHelper.fontColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        StringHelper.change,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Nick name
            const SizedBox(height: 20),
            CustomTextFormField(
              label: StringHelper.nickName,
              textController: nickController,
            ),

            // Instagram
            const SizedBox(height: 20),
            CustomTextFormField(
              label: StringHelper.instId,
              textController: instagramController,
            ),

            // Work
            const SizedBox(height: 20),
            CustomTextFormField(
              label: StringHelper.workLink,
              textController: workController,
            ),

            // Portfolio
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringHelper.portFolio,
                  style: TextStyle(
                    color: ColorHelper.blackFontColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 52,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorHelper.dividerColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        fileName,
                        style: TextStyle(
                          color: ColorHelper.blackFontColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),

                      InkWell(
                        onTap: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'doc', 'docx'],
                          );

                          if (result != null) {
                            File file = File(result.files.single.path!);
                            debugPrint('Picked file: ${file.path}');
                          }
                        },
                        child: SvgPicture.asset(ImageHelper.attach),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Save
            Container(
              height: 48,
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              decoration: BoxDecoration(
                color: Color(0xffcecece),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  StringHelper.save,
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
