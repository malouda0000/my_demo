import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_images.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/model/models/custom_onbording.dart';

final List<MyCustomOnBording> mainCustomOnBordingList = [
  MyCustomOnBording(
    title: AppLocal.fastfood.tr,
    discription: AppLocal.fastfoodDiscription.tr,
    imagePath: AppImages.mainBurgerIcon,
  ),
  MyCustomOnBording(
    title: AppLocal.moviTixts.tr,
    discription: AppLocal.moviTixtsDiscription.tr,
    imagePath: AppImages.movie,
  ),
  MyCustomOnBording(
    title: AppLocal.discounts.tr,
    discription: AppLocal.discountsDiscription.tr,
    imagePath: AppImages.discount,
  ),
  MyCustomOnBording(
    title: AppLocal.fastDelivery.tr,
    discription: AppLocal.fastDeliveryDiscription.tr,
    imagePath: AppImages.travel,
  ),
];
