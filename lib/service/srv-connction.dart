import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../url/url.dart';
class SrvConnection{

  //service connection
  Future<Map<String, dynamic>> connection({
    required String email,
    required String mp

  }) async {


  //  Token token;
    var url="${Url.index}login";
    print(url);
    var result;
    final Map<String, dynamic> params = {
      'email': email,
      'password': mp
    };
    //  print(params);
    try{
      http.Response response = await http.post(Uri.parse(url), headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
          body: jsonEncode(params),
          encoding: Encoding.getByName('utf-8')
      );

      if(response.statusCode==200){

        Map<String, dynamic> temprespon = json.decode(response.body);
        print(temprespon);

        if(temprespon['status']==200){





          result = {

            'status': true,

          };

          return result;
        }
        else{

          // Map<String, dynamic> temprespon = json.decode(response.body);
          // print(temprespon);
          //  print(temprespon['status']);

          result = {

            'status': false,
            'message': temprespon['message'],
          };
          return result;


        }






      }
      else{

        Map<String, dynamic> temprespon = json.decode(response.body);
        print(temprespon);
        //  print(temprespon['status']);

        result = {
          'error':false,
          'status': false,
          'message': "Echec de connection",
        };
        return result;
      }


    }catch(e){

      print(e);
      result = {
        'error':true,
        'status': false,
        'message': e.toString,
      };
      return (result);
    }


  }





}