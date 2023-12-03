import 'package:card_swiper/card_swiper.dart';
import 'package:aeyde_app/routes/explore_routes/explorecard.dart';
import 'package:aeyde_app/routes/explore_routes/exploredetail.dart';
import 'package:aeyde_app/routes/explore_routes/exploreheader.dart';
import 'package:aeyde_app/routes/explore_routes/explorelist.dart';
import 'package:aeyde_app/modules/theme.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                Row(
                children: <Widget>[
                  const ExploreWidget(),
                  const SizedBox(width: 290),
               Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                ),
              ),
            ),
            ),
                ],
              ),
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