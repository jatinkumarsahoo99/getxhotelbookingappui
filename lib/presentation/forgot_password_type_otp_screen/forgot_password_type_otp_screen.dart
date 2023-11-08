import 'controller/forgot_password_type_otp_controller.dart';import 'package:flutter/material.dart';import 'package:jatin_kumar_s_application2/core/app_export.dart';import 'package:jatin_kumar_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:jatin_kumar_s_application2/widgets/app_bar/appbar_title.dart';import 'package:jatin_kumar_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:jatin_kumar_s_application2/widgets/custom_elevated_button.dart';import 'package:jatin_kumar_s_application2/widgets/custom_pin_code_text_field.dart';class ForgotPasswordTypeOtpScreen extends GetWidget<ForgotPasswordTypeOtpController> {const ForgotPasswordTypeOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 34.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 18.v), Text("msg_code_has_been_send".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 59.v), Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {})), SizedBox(height: 62.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_55".tr, style: CustomTextStyles.bodyLargePrimary), TextSpan(text: "lbl_s".tr, style: theme.textTheme.bodyLarge)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerifyButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerifyButton() { return CustomElevatedButton(text: "lbl_verify".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapVerifyButton();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the createNewPasswordScreen when the action is triggered.
onTapVerifyButton() { Get.toNamed(AppRoutes.createNewPasswordScreen, ); } 
 }
