import 'package:flutter/material.dart';
import 'package:muthunagar/constants/text_widget.dart';

class HinduReligion extends StatefulWidget {
  const HinduReligion({Key key}) : super(key: key);

  @override
  _HinduReligionState createState() => _HinduReligionState();
}

class _HinduReligionState extends State<HinduReligion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF178DBC),
        title: Center(child: Text("Hindu Functions",style: TextStyle(color: Colors.white,),),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,),),
        ],
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context,int index){
            return
              Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/beauty.png'),
                    title: customText(Colors.black, 'Wedding', height * 0.05, FontWeight.bold),
                    subtitle:  customText(Colors.grey, '26-07-2021/12:00PM', height * 0.03, FontWeight.normal),
                  ),
                ],
              );

          }),
    );
  }
}
