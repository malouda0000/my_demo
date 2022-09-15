import 'package:get/get.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/data/data%20source/meal_details_data.dart';
import 'package:my_demo/data/model/food_menue.dart';

final List<FoodMenue> FoodMenuesData = [
  FoodMenue(
    title: AppLocal.beef.tr,
    prefDiscription: AppLocal.beefPrefDiscrip.tr,
    img: 'assets/foods/beef meat/beef1.jpg',
    foodListItems: beefDetailsData,
  ),
  FoodMenue(
    title: AppLocal.chin.tr,
    prefDiscription: AppLocal.chinPrefDiscrip.tr,
    img: 'assets/foods/chinese food/chin1.jpg',
    foodListItems: chineseDetialsData,
  ),
  FoodMenue(
    title: AppLocal.juice.tr,
    prefDiscription: AppLocal.juicePrefDiscrip.tr,
    img: 'assets/foods/juice/juice1.jpg',
    foodListItems: juiceDetialsData,
  ),
  FoodMenue(
    title: AppLocal.noodles.tr,
    prefDiscription: AppLocal.noodlesPrefDiscrip.tr,
    img: 'assets/foods/noodles/noodles1.jpg',
    foodListItems: noodlesDetialsData,
  ),
  FoodMenue(
    title: AppLocal.pasta.tr,
    prefDiscription: AppLocal.pastaPrefDiscrip.tr,
    img: 'assets/foods/pasta/pasta1.jpg',
    foodListItems: pastaDetialsData,
  ),
  FoodMenue(
    title: AppLocal.salad.tr,
    prefDiscription: AppLocal.saladPrefDiscrip.tr,
    img: 'assets/foods/salad/salad1.jpg',
    foodListItems: saladDetialsData,
  ),
  FoodMenue(
    title: AppLocal.soda.tr,
    prefDiscription: AppLocal.sodaPrefDiscrip.tr,
    img: 'assets/foods/soda/soda1.jpg',
    foodListItems: sodaDetialsData,
  ),
];
