import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/controller/article_controller.dart';
import 'package:hidoc/model/article_model.dart';
import 'package:hidoc/view/widgets/bottom_widget.dart';
import 'package:hidoc/view/widgets/drop_down.dart';
import 'package:hidoc/view/widgets/explore_articles.dart';
import 'package:hidoc/view/widgets/hidoc_bulletin.dart';
import 'package:hidoc/view/widgets/latest_articles.dart';
import 'package:hidoc/view/widgets/orange_button.dart';
import 'package:hidoc/view/widgets/top_card.dart';
import 'package:hidoc/view/widgets/trending.dart';
import 'package:hidoc/view/widgets/trending_articles.dart';
import 'package:hidoc/view/widgets/news.dart';


class ArticlesView extends StatelessWidget {
  ArticlesView({super.key});

  ArticlesController controller = Get.put(ArticlesController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: whiteColor,title: Text("Articles",style: TextStyle(color: blackColor)),centerTitle: true,),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            height: 190,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 190,
              width: 150,
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
            ),
          ),
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
                      DropDown(width: width, data: data),
                      TopCard(height: height, width: width, data: data),
                      HidocBulletin(width: width, data: data),
                      Trending(data: data),
                   SizedBox(height: 10),
                      ButtonOrange(
                        width: width / 1.3,
                        title: 'Read more bulletins',
                      ),
                      SizedBox(height: 10),
                      LatestArticles(data: data),
                      SizedBox(height: 20),
                      TrendingArticles(height: height, width: width, data: data),
                        SizedBox(height: 20),
                      ExploreArticles(data: data),
                      ButtonOrange(
                        width: width,
                        title: 'Explore hidoc Dr',
                      ),
                       SizedBox(height: 20),
                      MainTitle(
                        title: "What's more on Hidoc Dr.",
                      ),
                       SizedBox(height: 20),
                       NewsWidget(height: height, data: data),
                      SizedBox(height: 20),
                      BottomWidget(height: height, width: width),
                       SizedBox(height: 20),
                      Container(
                          padding: EdgeInsets.all(15),
                          
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(0.2),
                          ),
                          child: Row(
                            children: [
                              Column(children: [
                                SubTitle(
                                  title:
                                      "Social network for doctors - \nA special feature on Hidoc Dr.",
                                ),
                              ]),
                              Expanded(
                                child: Container(
                                    height: 40,
                                    width: width / 7,
                                    decoration: BoxDecoration(
                                       color: Colors.orange,
                                      borderRadius: BorderRadius.all(
                                  
                                      Radius.circular(25.0)),),
                                   
                                    child: Center(child: Text("Visit",style: TextStyle(color: whiteColor)))),
                              ),
                            ],
                          )),
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
