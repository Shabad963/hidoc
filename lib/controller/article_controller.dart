
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:animagieeui/view/doctor/view/user_doctoravalist/Service/paymentwithorderidservice.dart';
import 'package:get/get.dart';
import 'package:hidoc/model/article_model.dart';
import 'package:hidoc/service/articles_service.dart';

class ArticlesController extends GetxController {


  @override
  void onInit() {
    getArticlesdata();
    super.onInit();
  }
  RxList<ArticlesModel> articlesData =
      <ArticlesModel>[].obs;

  RxBool isLoadingService = true.obs;
  void getArticlesdata(
    ) async {
    try {
      final response = await ArticlesService.getArticlesService();

      if (response != null) {
        articlesData.clear();
        articlesData.add(response);
        isLoadingService(false);
      } else {
        isLoadingService(false);
        return null;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}