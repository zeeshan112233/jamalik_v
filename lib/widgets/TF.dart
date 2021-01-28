import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class TF extends StatelessWidget {
  TF({
    this.controller,
    this.hintText,
    this.helpText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword,
    this.enabled,
    this.readOnly,
    this.borderColor,
    this.tfColor,
    this.isnumber = false,
  });

  final TextEditingController controller;
  final String hintText;
  final String helpText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool enabled;
  final bool readOnly;

  final Color borderColor;
  final Color tfColor;
  bool isnumber = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: isnumber ? TextInputType.number : TextInputType.text,
        readOnly: null == readOnly ? false : true,
        obscureText: null == isPassword ? false : true,
        decoration: InputDecoration(
          fillColor: null == tfColor ? Colors.teal : tfColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 0.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: null == borderColor ? Colors.teal : borderColor,
              width: 1.0,
            ),
          ),
          hintText: null == hintText ? '' : hintText,
          helperText: helpText == null ? '' : helpText,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: null == suffixIcon
              ? Icon(
                  Icons.close,
                  color: Colors.red,
                )
              : Icon(
                  suffixIcon,
                  color: Colors.pink.shade300,
                ),
          enabled: null == enabled ? true : false,
        ),
      ),
    );
  }
}

//countrycode text field

class country_TF extends StatelessWidget {
  country_TF();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Phone Number"),
              IntlPhoneField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                    ),
                  ),
                ),
                initialCountryCode: 'PK', 
                onChanged: (phone) {
                  //when phone number country code is changed
                  print(phone.completeNumber); //get complete number
                  print(phone.countryCode); // get country code only
                  print(phone.number); // only phone number
                },
              ),
            ],
          ),
        ));
  }
}
