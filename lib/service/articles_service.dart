import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hidoc/config/urls.dart';
import 'package:hidoc/model/article_model.dart';
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart' as dio;
// import 'package:dio/dio.dart' as dio;

class ArticlesService {
static  Future<ArticlesModel?> getArticlesService() async {
    try {
      dio.FormData formData = dio.FormData.fromMap({
        "sId": "500",
        "uuId": "",
        "userId": "423914",
      });
      dio.Response response = await dio.Dio().post(
        Urls.articles,
        data: formData,
      );

      log("Datasss ${response.data}");

      if (response.statusCode == 200) {
        // Fluttertoast.showToast(msg: response.data["message"]);
        return ArticlesModel.fromJson(response.data);
      } else {
        log("error");
      }
    } on DioError catch (e) {
      log("catch${e.response}");
      Fluttertoast.showToast(msg: e.response!.data["message"]);
    }
    return null;
  }
}
