import 'package:dio/dio.dart';
import 'package:ecommerce_app/common/constants.dart';

class ApiCall {
  Dio dio = Dio();
  addSignupInfo(
      {required String name,
      required String phone,
      required String address,
      required String email,
      required String password,
      required String cpassword}) async {
    try {
      final res = await dio.post("${Url.url}/register", data: {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "address": address,
      });
      if (res.statusCode == 200) {
        print("account created successfully");
      } else {
        print("failed");
      }
    } on DioException catch (e) {
      print(e.message);
    } catch (e) {
      print(e.toString());
    }
  }
}
