import 'package:http/http.dart' as http;
import 'dart:convert';
class ApiMovies {
  final String Url = "https://api.themoviedb.org/3";
  final String Key = "a7ac5b024a2bd5fe31e06534b18a0b26";
  final String Lang = "fr-FR";
  // Méthode qui interroge les film populaire : /movie/popular
  // Cette méthode va nous retourner le body API
  // Plusieurs cas de Figure :
  // - Le Body est ok
  // - Le body est vide
  // - le body n'a rien voir (contient un message d'erreur)
  // Le mieux serait que la méthode retourne 2 trucs :
  // - Le code HTTP (200/300/400) ou code interne à vous
  // - LE body tel quel
  // Donc on va retourne une Map {"code":200, "body":{retour API}}
  Future<Map<String,dynamic>> getPopular() async{
    http.Response response;
    String completeUrl = Url + "/movie/popular?api_key=" + Key + "&language="+Lang;
    print(completeUrl);
    response = await http.get(Uri.parse(completeUrl));
    Map<String,dynamic> map = {
      "code":1,
      "body":""
    };
    if(response.statusCode==200){
      map["code"] = 0;
      map["body"] = jsonDecode(response.body);
    }else{
      map["code"] = 1;
      map["body"] = jsonDecode(response.body);
    }
    return map;
  }
}
