import 'package:jatin_kumar_s_application2/core/app_export.dart';import 'package:jatin_kumar_s_application2/presentation/forgot_password_type_otp_screen/models/forgot_password_type_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the ForgotPasswordTypeOtpScreen.
///
/// This class manages the state of the ForgotPasswordTypeOtpScreen, including the
/// current forgotPasswordTypeOtpModelObj
class ForgotPasswordTypeOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordTypeOtpModel> forgotPasswordTypeOtpModelObj = ForgotPasswordTypeOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
