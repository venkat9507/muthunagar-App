import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/screens/categories.dart';

import 'today_deal.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 20,
              child: ListTile(title: customText(Colors.black, 'Search', height * 0.03, FontWeight.bold),
                trailing: Icon(Icons.search,color: Colors.black,),),
            ),
          ),
          Container(
            height: height * 0.25,
            width:  double.infinity,
            color: Colors.lightBlue.shade100,
            child:  SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    Get.to(   Categories(),);
                  }, icon: Icon(Icons.sort_sharp,color: Colors.lightBlue,)),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/food.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'FOOD', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/electronics.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'ELECTRONICS', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/essential.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'ESSENTIAL', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/BestOffer.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'OFFERS', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/fashion.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'FASHION', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/home.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'HOME', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/appliance.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'APPLIANCES', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/beauty.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'BEAUTY', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  height * 0.2,
                    width:  width * 0.2,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset('assets/images/toys.png',fit: BoxFit.cover,)),
                          customText(Colors.black, 'TOYS', height * 0.03, FontWeight.bold),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              child: CarouselWithIndicatorDemo()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               customText(Color(0xFF178DBC), "Today's Deal", height * 0.05, FontWeight.bold),
                InkWell(
                  onTap: (){
                    Get.to(TodayDeal());
                  },
                  child: Card(
                    color: Color(0xFF178DBC),
                    child:  Padding(padding:   const EdgeInsets.all(8.0),
                    child: customText(Colors.white, "VIEW ALL", height * 0.03, FontWeight.bold),)
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context,int index){
                return
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.4,
                            width: double.infinity,
                            child: Image.network(imgList[index].toString(),fit: BoxFit.cover,)),
                      ),
                      // customText(Colors.black,categoriesName[index].toString(), height * 0.03, FontWeight.bold),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'Dresses',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(Color(0xFF178DBC), "Today's Ads", height * 0.05, FontWeight.bold),
                // Card(
                //     color: Color(0xFF178DBC),
                //     child:  Padding(padding:   const EdgeInsets.all(8.0),
                //       child: customText(Colors.white, "VIEW ALL", height * 0.03, FontWeight.bold),)
                // ),
              ],
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
              itemBuilder: (BuildContext context,int index){
                return
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: height ,
                            width: double.infinity,
                            child: Image.network(imgList[index].toString(),fit: BoxFit.cover,)),
                      ),
                      // customText(Colors.black,categoriesName[index].toString(), height * 0.03, FontWeight.bold),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'Dresses',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
              }),
        ],
      ),
    );
  }
}


class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(

                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
      );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: double.infinity),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();