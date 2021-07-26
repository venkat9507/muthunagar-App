import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/text_widget.dart';


class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoriesName = ['Food','Electronics','Essential','Beauty','Offers','Toys','Home','Fashion','Appliances'];
    List<String> categoriesImage = ['assets/images/food.png','assets/images/electronics.png','assets/images/essential.png','assets/images/beauty.png','assets/images/BestOffer.png','assets/images/toys.png','assets/images/home.png','assets/images/fashion.png','assets/images/appliance.png',];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF178DBC),
        title: Center(child: Text('Categories',style: TextStyle(color: Colors.white,),),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,),),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 20,
              child: ListTile(title: customText(Colors.black, 'Search', height * 0.03, FontWeight.bold),
                trailing: Icon(Icons.search,color: Colors.black,),),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
              itemCount: categoriesName.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context,int index){
                return
                   Card(
                child: Column(
                children: [
                SizedBox(
                width: double.infinity,
                child: Image.asset(categoriesImage[index].toString(),fit: BoxFit.cover,)),
                customText(Colors.black,categoriesName[index].toString(), height * 0.03, FontWeight.bold),
                ],
                ),
                );
          }),
        ],
      ),
    );
  }
}
