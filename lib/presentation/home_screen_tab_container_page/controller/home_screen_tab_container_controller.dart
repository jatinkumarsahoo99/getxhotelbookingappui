import 'package:jatin_kumar_s_application2/core/app_export.dart';import 'package:jatin_kumar_s_application2/presentation/home_screen_tab_container_page/models/home_screen_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeScreenTabContainerPage.
///
/// This class manages the state of the HomeScreenTabContainerPage, including the
/// current homeScreenTabContainerModelObj
class HomeScreenTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {HomeScreenTabContainerController(this.homeScreenTabContainerModelObj);

TextEditingController searchController = TextEditingController();

Rx<HomeScreenTabContainerModel> homeScreenTabContainerModelObj;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
