import 'package:my_demo/model/models/meal_detials_class.dart';

class FoodMenue {
  final String title;
  final String prefDiscription;
  final String img;
  final List<MealDetailsClass> foodListItems;

  FoodMenue({
    required this.title,
    required this.prefDiscription,
    required this.img,
    required this.foodListItems,
  });
}
