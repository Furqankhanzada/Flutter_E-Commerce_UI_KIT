import 'dart:convert';
import 'package:flutter_ecommerce_ui_kit/config.dart';
import 'package:http/http.dart' as http;

class CartService {
  getCategories() async {
    final response = await http.get(Uri.parse('$BASE_URL/wc-apis/v1/categories'));

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      return jsonDecode(response.body);
    } else {
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }

  getCountries() async {
    final response = await http.get(Uri.parse('$BASE_URL/wc-apis/v1/countries'));
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      return jsonDecode(response.body);
    } else {
      // If that call was not successful, throw an error.
      //      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }
    getState(countryCode) async {
    final response = await http.get(Uri.parse('$BASE_URL/wc-apis/v1/states?code=$countryCode'));
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      return jsonDecode(response.body);
    } else {
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }

  getPaymentMethods() async {
    final response = await http.get(Uri.parse('$BASE_URL/wc-apis/v1/payments'));

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      return jsonDecode(response.body);
    } else {
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }
}
