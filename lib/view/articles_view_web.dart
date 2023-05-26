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
import 'package:hidoc/view/widgets/top_card_web.dart';
import 'package:hidoc/view/widgets/trending.dart';
import 'package:hidoc/view/widgets/trending_articles.dart';
import 'package:hidoc/view/widgets/news.dart';

class ArticlesViewWeb extends StatelessWidget {
  ArticlesViewWeb({super.key});

  ArticlesController controller = Get.put(ArticlesController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Obx(() {
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
                  SizedBox(height: 20),
                  AppBarWidget(
                    height: height,
                    width: width / 2,
                    isWeb: true,
                  ),
                  SizedBox(height: 20),
                  DropDown(
                    width: width / 2,
                    data: data,
                    isWeb: true,
                  ),
                  SizedBox(height: 40),
                  TopCardWeb(height: height, width: width, data: data),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        HidocBulletin(width: width, data: data),
                        Expanded(
                            child: Trending(
                          data: data,
                          width: width,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ButtonMain(
                    width: width / 2,
                    title: 'Read more bulletins',
                    isWeb: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LatestArticles(
                        data: data,
                        width: width,
                      ),
                      SizedBox(width: 20),
                      TrendingArticles(
                          height: height, width: width, data: data),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            ExploreArticles(
                              data: data,
                              width: width,
                            ),
                            ButtonMain(
                              width: width / 3.2,
                              title: 'Explore hidoc Dr',
                              isWeb: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MainTitle(
                    title: "What's more on Hidoc Dr.",
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      NewsWidget(height: height, data: data, width: width,),
                       SizedBox(width: 20),
                  Expanded(child: BottomWidget(height: height, width: width)),
                    ],
                  ),
                 
                  SizedBox(height: 20),
                  SocialCard(width: width,isWeb: true),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
