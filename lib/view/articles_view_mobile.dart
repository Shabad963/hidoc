import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/controller/article_controller.dart';
import 'package:hidoc/model/article_model.dart';
import 'package:hidoc/view/widgets/appbar.dart';
import 'package:hidoc/view/widgets/backgrounds.dart';
import 'package:hidoc/view/widgets/bottom_widget.dart';
import 'package:hidoc/view/widgets/drop_down.dart';
import 'package:hidoc/view/widgets/explore_articles.dart';
import 'package:hidoc/view/widgets/hidoc_bulletin.dart';
import 'package:hidoc/view/widgets/latest_articles.dart';
import 'package:hidoc/view/widgets/button_main.dart';
import 'package:hidoc/view/widgets/social.dart';
import 'package:hidoc/view/widgets/top_card.dart';
import 'package:hidoc/view/widgets/trending.dart';
import 'package:hidoc/view/widgets/trending_articles.dart';
import 'package:hidoc/view/widgets/news.dart';


class ArticlesViewMobile extends StatelessWidget {
  ArticlesViewMobile({super.key});

  ArticlesController controller = Get.put(ArticlesController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          CircleOrange(),
          DesignedWidget(),
          Obx(() {
            if (controller.isLoadingService.value == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var data = controller.articlesData[0].data;
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      AppBarWidget(height: height, width: width),
            SizedBox(height: height * 0.02),
                      DropDown(width: width, data: data, isWeb: false,),
                      TopCard(height: height, width: width, data: data),
                      HidocBulletin(width: width / 3, data: data),
                      Trending(data: data, width: width,),
                   SizedBox(height: 10),
                      ButtonMain(
                        width: width / 1.3,
                        title: 'Read more bulletins',
                      ),
                      SizedBox(height: 10),
                      LatestArticles(data: data, width: width,),
                      SizedBox(height: 20),
                      TrendingArticles(height: height, width: width, data: data),
                        SizedBox(height: 20),
                      ExploreArticles(data: data, width: width,),
                      ButtonMain(
                        width: width,
                        title: 'Explore hidoc Dr',
                      ),
                       SizedBox(height: 20),
                      MainTitle(
                        title: "What's more on Hidoc Dr.",
                      ),
                       SizedBox(height: 20),
                       NewsWidget(height: height, data: data, width: width,),
                      SizedBox(height: 20),
                      BottomWidget(height: height, width: width),
                       SizedBox(height: 20),
                      SocialCard(width: width),
                    ],
                  ),
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
