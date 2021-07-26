import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/text_widget.dart';


class TodayDeal extends StatelessWidget {
  const TodayDeal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoriesName = ['Food','Electronics','Essential','Beauty','Offers','Toys','Home','Fashion','Appliances'];
    List<String> categoriesImage = ['assets/images/food.png','assets/images/electronics.png','assets/images/essential.png','assets/images/beauty.png','assets/images/BestOffer.png','assets/images/toys.png','assets/images/home.png','assets/images/fashion.png','assets/images/appliance.png',];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF178DBC),
        title: Center(child: Text("Today's Deal",style: TextStyle(color: Colors.white,),),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,),),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: ListTile(title: customText(Colors.black, 'Search', height * 0.03, FontWeight.bold),
                trailing: Icon(Icons.search,color: Colors.black,),),
            ),
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: categoriesName.length,
                itemBuilder: (BuildContext context,int index){
                  return
                    Card(
                      child:
                          ListTile(
                            leading: Image.asset(categoriesImage[index].toString(),fit: BoxFit.cover,),
                            title: customText(Colors.black,categoriesName[index].toString(), height * 0.04, FontWeight.bold),
                            subtitle:  customText(Colors.black,' 30 % Offer', height * 0.03, FontWeight.normal),
                          ),
                    );
                }),
          ),
        ],
      ),
    );
  }
}
