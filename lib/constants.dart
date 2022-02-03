import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color.fromARGB(255, 83, 5, 36);
const textColor = Color.fromARGB(255, 255, 255, 255);
const backgroundColor = Color.fromARGB(178, 212, 21, 126);
const redColor = Color(0xFFE85050);

const defaultPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(0.1),
  ),
);

// I will explain it later

const emailError = 'Enter a valid email address';
const requiredField = "This field is required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(6, errorText: 'password must be at least 6 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ],
);
