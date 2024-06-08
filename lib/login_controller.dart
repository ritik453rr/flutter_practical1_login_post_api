import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginController with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  userLogin(TextEditingController emailController,
      TextEditingController passwordController) async {
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/register'), body: {
        'email': emailController.text,
        'password': passwordController.text
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        if (data['token'] != '') {
        
        }
      } else {
        print("failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
