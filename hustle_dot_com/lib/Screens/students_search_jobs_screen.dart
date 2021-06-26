import 'package:flutter/material.dart';
import 'package:hustle_dot_com/Screens/job_page.dart';
import 'package:hustle_dot_com/Screens/companies_page.dart';
import 'package:hustle_dot_com/Screens/salaries_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}




class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
//Creates a tabcontroller variable which will be used to hold reference to and cycle //through the our different screens.
  TabController _tabController;


  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
              children: [
                Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
      ),
      body: Column(
        // Column
        children: <Widget>[
          Container(
            color: Colors.white, // Tab Bar color change
            child: TabBar(
              // TabBar
              controller: _tabController,
              unselectedLabelColor: Colors.blue,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              indicatorWeight: 4,
              indicatorColor: Colors.blue,
              tabs: <Widget>[
                Tab(
                  text: "Jobs",
                ),
                Tab(
                  text: "Companies",
                ),
                Tab(
                  text: "Salaries",
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: TabBarView(
              // Tab Bar View
              controller: _tabController,
              children: <Widget>[JobPage(), CompaniesPage(), SalariesPage()],
            ),
          ),
        ],
      ),
    );
  }
}
