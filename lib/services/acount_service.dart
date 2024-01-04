import 'package:dio/dio.dart';

class AccountService {
  final Dio _dio = Dio();
  void login(String phoneNumber) async {
    return;
    try {
      var result =
          await _dio.post("https://server.khanehaval.com/new_address", data: {
        "address": 424,
        "fname": "اسماعیل",
        "lname": "دانسی",
        "title": "اسماعیل دانسی",
        "cellphone": "${phoneNumber}",
        "email": "edansi",
        "group": 48,
        "agency": "",
        "recaptcha":
            "03AFcWeA52-9LVADe_45kVL5ilEoq2sXs0gIsgob5jPMZHg1DdMkt0b1QBuVostO3PI5R_ZaJewkK2zdH4pLMwG3np2fLmk4Sv6RCtsb-AZfO9etmyUPz7ZOO7J2qEFkG0Fseh5p8Y3-lQvik03aj-XKvxjDk7HRQIexQQD879TQF0hlinO4h9pDnYtkiLHMI3RXynrQdmkn3VKD78yWgT-IHJSMDwIIQtqhw95cx_7XGZSIQO9mEPOpolkxzE-L_4t_-2d_2cURstrLbseo6KY2aCcMJoLWK78nMH09t0OYIjy-zG1wSXopoaPbQXzL65n67dFz5xIn1tYbsFDOMfsuBXx_6oDLe3ZaBEvLdTg82D7jU1Wjdx87K0WwNnatmgaXgQ2Z--UxwSwFIve5bonZfvC8Ht9WkGSyl7QGbHiOe7ZaSO4Fc72QKl7s-PHfqsoVIhHZPX08Di-UfAkY5wBRQsvs-9u3xZeccdGoQAwNI0rd2OaWEmQOmOsWnajbkJfTDdSygAwqPCF5hZWQIIli_5VfsUr7R-ahL29BNytRGlfA4y6lksiNut9fGhiGKa-bB5EpnN2zjKVStIN0tTmFNiqqYpqOyUCHw7-EPHET1xJk4q7GENV1yUXExWTqfmPLsMMqDl0v75"
      });
      print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
      print(result.statusCode);
    } catch (e) {
      print(e);
    }
  }
}
