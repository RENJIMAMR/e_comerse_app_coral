import 'package:e_comerse_app_coral/core/constants/text_constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final bool isRequired;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? title;

  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.labelText,
    this.isRequired = false,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "",
            style: TextStyles.cardTitle,
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              label: isRequired ? Text('$labelText *') : Text(labelText ?? ''),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              fillColor: const Color.fromARGB(255, 249, 249, 249),
            ),
            validator: (value) {
              if (isRequired && (value == null || value.isEmpty)) {
                return 'This field is required.';
              }
              return validator?.call(value);
            },
          ),
        ],
      ),
    );
  }
}
