import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/model_class.dart';

class ApiService {
  static Future<List<ProductsModel>> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((productJson) => ProductsModel.fromJson(productJson))
          .toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
