import 'package:card_swiper/card_swiper.dart';
import 'package:aeyde_app/modules/explorecard.dart';
import 'package:aeyde_app/modules/exploredetail.dart';
import 'package:aeyde_app/modules/exploreheader.dart';
import 'package:aeyde_app/modules/explorelist.dart';
import 'package:aeyde_app/routes/theme.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [titleTextColor, contentTextColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.1, 0.9],
                  ),
                  ),
              child: SafeArea(
              child: Column(
                children: <Widget>[
                const ExploreWidget(),
                Expanded( 
                  child: SingleChildScrollView(
                  child: SizedBox(
                    height: 600,
                    child: Swiper(
                    itemCount: ExploreInfo.length,
                    itemWidth: MediaQuery.of(context).size.width,
                    itemHeight: MediaQuery.of(context).size.height,
                    layout: SwiperLayout.TINDER,
                    pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            color: Colors.white,
                            activeColor: Colors.white,
                            activeSize: 12,
                            space: 4)),
                            itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                        DetailsPage(
                                          explorelist: explorelist [index])));
                                          },
                                          child: Stack(
                                            children: [
                                              Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 100,
                                                  ),
                                CustomCard(
                                  name: explorelist[index].name,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Hero(
                                  tag: explorelist[index].position,
                                  child:
                                      Image.asset(explorelist[index].iconImage)),
                            )
                          ],
                        ),
                      );
                    },
                  ),
              ),
                ),
                ),
                      ],
              ),
              ),
              ),
                    );
}
}