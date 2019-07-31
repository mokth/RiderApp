import 'package:corsac_jwt/corsac_jwt.dart';
import '../model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'datahelper.dart';

abstract class ApiBase {
  //http://localhost:59036/api/customer/odata/search
 //final String _baseUrl = Uri.encodeFull("http://localhost:59036/api/");
 final String _baseUrl = Uri.encodeFull("http://www.gala365.com.my/onlinechat/api/");
 final String _imageUrl = Uri.encodeFull("http://www.gala365.com.my/onlinechat/attachment/");
 final DataHelperSingleton _datahlp = DataHelperSingleton.getInstance();
 String _erpAPIUrl; 
  
  String get apiURL {
     
    return  _baseUrl;
    //return "http://10.1.8.15/erpapi/api/";
  }

  String get imageURL {
    return _imageUrl;
  }

  Map jsonHeader() {
    var map = new Map<String, String>();
    map["'content-type'"] = "'application/json'";
    return map;
  }

  Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    return;
  }

  Future<bool> hasToken() async {
    print("ada token");
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    return token != null;
  }

  Future<String> getToken() async {
    //print("ada token");
    final prefs = await SharedPreferences.getInstance();
    String token = "";
    try {
      String authtoken = prefs.getString('token');
      //Map<String,dynamic> jsonObj = jsonDecode(token);

      token = "Bearer " + authtoken; //jsonObj["auth_token"];
    } catch (Exception) {}

    return token;
  }

  int decodeToken(String token) {
    int code = 0;
    try {
      var date = DateTime.now().add(Duration(seconds: 20));
      var validator = new JWTValidator(currentTime: date);

      var decodedToken = new JWT.parse(token);

      print("decode");
      Set<String> error = validator.validate(decodedToken);
      print(error);
      code = error.length;
    } catch (e) {
      print(e.toString());
      code = 99;
    }

    return code;
  }

  User getAuthTokenInfo(String token) {
    User user;
    token= token.replaceFirst("Bearer ", "");
    try {
      var dtoken = new JWT.parse(token);
      String rol = dtoken.getClaim('rol');   
      String name = dtoken.getClaim('id');
      String fname = dtoken.getClaim('fullname');   
    
      user = User(
          name: name,
          fullname: fname,
          password: "",
        );
        print(user);
    } catch (e) {
      print(e);
      user = null;
    }
    return user;
  }

  Future<String> getTokenOnly() async {
    String token = "";
    try {
      final prefs = await SharedPreferences.getInstance();
      String authToken = prefs.getString('token');
      token = (authToken == null) ? "" : authToken;
      // token = jsonObj["auth_token"];
    } catch (e) {
      token = "";
      print(e.toString());
    }

    return token;
  }
}
