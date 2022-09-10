import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

int postNo = 0;

class ApiController extends GetxController {
  List posts = [];

// meals Api
//  'https://www.themealdb.com/api/json/v1/1/search.php?f=a'
  getMealsFromApi() async {
    // Uri mealsApi = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    Uri mealsApi = Uri.parse('https://jsonplaceholder.typicode.com/photos');

    // var mealsApi = "https://www.themealdb.com/api/json/v1/1/search.php?f=a";

    var response = await http.get(mealsApi);

    // var responsebody = jsonDecode(response.body);

    var responsebody = await convert.jsonDecode(response.body);

// List posts =
    // print(responsebody[1]);
    // posts = responsebody;
    posts.addAll(responsebody);
    print('postes ==========================');
    update();
    print('postno : ${postNo} =================');
    postNo++;
    print(posts[2]);
    return posts;
  }
}
