import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/constants.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/constants/widgets/celebration_widget.dart';


class Celebration extends StatefulWidget {
  const Celebration({Key key}) : super(key: key);

  @override
  _CelebrationState createState() => _CelebrationState();
}

class _CelebrationState extends State<Celebration> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    celebrationController.controller = TabController(length: 2, vsync: this);
    celebrationController.controller.addListener(() {
      setState(() {
        celebrationController.selectedIndex.value =
            celebrationController.controller.index;
      });
      print("celebrationController Selected Index: " +
          celebrationController.selectedIndex.toString());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    elevation: 10,
                    child: ListTile(title: customText(
                        Colors.black, 'Search', height * 0.03, FontWeight.bold),
                      trailing: Icon(Icons.search, color: Colors.black,),),
                  ),
                ),
                PreferredSize(
                    child: TabBar(
                        controller: celebrationController.controller,
                        physics: BouncingScrollPhysics(),
                        isScrollable: true,
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                        indicatorColor: Colors.black,
                        tabs: [
                          Card(
                            color: celebrationController.selectedIndex == 0
                                ? Color(0xFF178DBC)
                                : Colors.white,
                            child: Tab(
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: customText(celebrationController
                                      .selectedIndex == 0
                                      ? Colors.white
                                      : Colors.black.withOpacity(0.3),
                                      'CELEBRATION', 15, celebrationController
                                          .selectedIndex == 0
                                          ? FontWeight.bold
                                          : FontWeight.normal)),
                            ),
                          ),
                          Card(
                            color: celebrationController.selectedIndex == 1
                                ? Color(0xFF178DBC)
                                : Colors.white,
                            child: Tab(
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: customText(celebrationController
                                      .selectedIndex == 1
                                      ? Colors.white
                                      : Colors.black.withOpacity(0.3),
                                      'RELIGION', 15, celebrationController
                                          .selectedIndex == 0
                                          ? FontWeight.bold
                                          : FontWeight.normal)),
                            ),),
                        ]), preferredSize: Size.fromHeight(30)),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(onPressed: () {},
                        icon: Icon(Icons.sort_sharp, color: Color(0xFF178DBC),
                          size: size.height * 0.05,)),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      controller: celebrationController.controller,
                      children: [
                        CelebrationTabBar(),
                        ChooseReligion(),
                      ]),
                ),
              ],),
          ),
    );
  }

}