import 'package:jatin_kumar_s_application2/core/app_export.dart';import 'package:jatin_kumar_s_application2/presentation/gallery_screen/models/gallery_model.dart';/// A controller class for the GalleryScreen.
///
/// This class manages the state of the GalleryScreen, including the
/// current galleryModelObj
class GalleryController extends GetxController {Rx<GalleryModel> galleryModelObj = GalleryModel().obs;

 }
