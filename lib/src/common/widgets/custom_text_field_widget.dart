import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? textController;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? label;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? readOnly;
  final double? width;
  final double? height;
  final Function()? onTap;
  final double? textFontSize;
  final Function(String)? onChange;
  final Function()? onEditComplete;
  final int? maxLine;
  final TextInputFormatter? textInputFormatter;
  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    super.key,
    this.textController,
    this.obscureText,
    this.keyboardType,
    this.hintText,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.height,
    this.width,
    this.maxLength,
    this.readOnly,
    this.textFontSize,
    this.onTap,
    this.onChange,
    this.onEditComplete,
    this.maxLine,
    this.textInputFormatter,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label != null) Text(
          label!,
          style: TextStyle(
            color: ColorHelper.blackFontColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 5),
        SizedBox(
          height: height,
          width: width,
          child: TextFormField(
            readOnly: readOnly ?? false,
            controller: textController,
            onTap: onTap,
            obscureText: obscureText == null ? false : obscureText!,
            maxLength: maxLength,
            style: TextStyle(
              color: readOnly != null && readOnly! ? Color(0xffABABAB) : ColorHelper.blackFontColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            keyboardType: keyboardType,
            inputFormatters: textInputFormatter == null ? null : [textInputFormatter!],
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              fillColor: readOnly != null && readOnly! ? Color(0xfff2f2f2) : Colors.transparent,
              hintStyle: TextStyle(
                color: ColorHelper.greyIconColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              filled: true,
              counterText: "",
              isDense: true,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE0E0E0), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE0E0E0), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE0E0E0), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onTapOutside: (val) {
              FocusScope.of(context).unfocus();
            },
            onChanged: onChange,
            onEditingComplete: onEditComplete,
            maxLines: maxLine ?? 1,
          ),
        ),
      ],
    );
  }
}
