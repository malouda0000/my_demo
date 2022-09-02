import 'package:my_demo/data/data%20source/meal_details_data.dart';
import 'package:my_demo/data/model/food_menue.dart';

final List<FoodMenue> FoodMenuesData = [
  FoodMenue(
    title: 'beef meat',
    prefDiscription: 'its nice beef meat',
    img: 'assets/foods/beef meat/beef1.jpg',
    foodListItems: beefDetailsData,
  ),
  FoodMenue(
    title: 'chinese food',
    prefDiscription: 'its soo spicy',
    img: 'assets/foods/chinese food/chin1.jpg',
    foodListItems: chineseDetialsData,
  ),
  FoodMenue(
    title: 'juice',
    prefDiscription: 'its alot of juice',
    img: 'assets/foods/juice/juice1.jpg',
    foodListItems: juiceDetialsData,
  ),
  FoodMenue(
    title: 'noodles',
    prefDiscription: 'its nice noodles',
    img: 'assets/foods/noodles/noodles1.jpg',
    foodListItems: noodlesDetialsData,
  ),
  FoodMenue(
    title: 'pasta',
    prefDiscription: 'yup pasta',
    img: 'assets/foods/pasta/pasta1.jpg',
    foodListItems: pastaDetialsData,
  ),
  FoodMenue(
    title: 'salad',
    prefDiscription: 'its nice salad',
    img: 'assets/foods/salad/salad1.jpg',
    foodListItems: saladDetialsData,
  ),
  FoodMenue(
    title: 'soda',
    prefDiscription: 'its cool soda',
    img: 'assets/foods/soda/soda1.jpg',
    foodListItems: sodaDetialsData,
  ),
];
