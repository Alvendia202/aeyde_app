import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://pbs.twimg.com/media/CaEJYcHXEAQEJkG?format=webp&name=small',
  'https://static.standard.co.uk/s3fs-public/thumbnails/image/2018/10/19/15/aeyde-campaign-191018.jpg?width=1200&height=900&fit=crop',
  'https://cdn.mos.cms.futurecdn.net/RLSbvVXmpJbFWoZmzXixvS-768-80.jpg.webp',
];

// ignore: must_be_immutable
class SlideImages extends StatefulWidget {
  List<String> imgList;

  SlideImages({required this.imgList});

  @override
  _SlideImage createState() => _SlideImage();
}

class _SlideImage extends State<SlideImages> {

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              
                              Colors.transparent,
                              Colors. transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        .toList();

    return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
        ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            return Container(
              width: 8,
              height: 6,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}