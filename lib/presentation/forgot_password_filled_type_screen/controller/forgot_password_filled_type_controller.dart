import 'package:jatin_kumar_s_application2/core/app_export.dart';import 'package:jatin_kumar_s_application2/presentation/forgot_password_filled_type_screen/models/forgot_password_filled_type_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the ForgotPasswordFilledTypeScreen.
///
/// This class manages the state of the ForgotPasswordFilledTypeScreen, including the
/// current forgotPasswordFilledTypeModelObj
class ForgotPasswordFilledTypeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordFilledTypeModel> forgotPasswordFilledTypeModelObj = ForgotPasswordFilledTypeModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
