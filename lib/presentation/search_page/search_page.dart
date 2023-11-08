import '../search_page/widgets/searchpagelist_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_model.dart';
import 'models/searchpagelist_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:jatin_kumar_s_application2/core/app_export.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildSeventyTwoRow(),
                    SizedBox(height: 22.v),
                    _buildSearchPageList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedText() {
    return Padding(
      padding: EdgeInsets.only(
        top: 2.v,
        bottom: 3.v,
      ),
      child: Text(
        "msg_recommended_586_379".tr,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildRecommendedText(),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgMenuPrimary,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVideoCamera,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(left: 12.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchPageList() {
    return Obx(
      () => ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount:
            controller.searchModelObj.value.searchpagelistItemList.value.length,
        itemBuilder: (context, index) {
          SearchpagelistItemModel model = controller
              .searchModelObj.value.searchpagelistItemList.value[index];
          return SearchpagelistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
