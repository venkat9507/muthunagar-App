import 'package:flutter/material.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/screens/celebration.dart';
import 'package:muthunagar/screens/home.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashboardController.controller = TabController(length: 7, vsync: this);
    dashboardController.controller.addListener(() {
      setState(() {
        dashboardController.selectedIndex.value = dashboardController.controller.index;
        dashboardController.headerTextChoosing();
      });
      print("Selected Index: " + dashboardController.selectedIndex.toString());

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF178DBC),
          title: Center(child: Text(dashboardController.headerText.value,style: TextStyle(color: Colors.white,),),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,),),
          ],
          bottom: PreferredSize(
              child: TabBar(
                controller: dashboardController.controller,
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: [
            Tab(
              child: Text('Home'),
            ),
            Tab(
              child: Text('Celebration'),
            ),
            Tab(
              child: Text('News'),
            ),
            Tab(
              child: Text('Ads'),
            ),
            Tab(
              child: Text('List'),
            ),
            Tab(
              child: Text('Services'),
            ),
                Tab(
                  child: Text('Offer'),
                ),
          ]), preferredSize: Size.fromHeight(30)),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: dashboardController.controller,
                children: [
                Home(),
                 Celebration(),
                  Container(
                    child: Center(
                      child: Text('News'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('Ads'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('List'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('Services'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('Offer'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
