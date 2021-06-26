import 'package:flutter/material.dart';
import 'package:hustle_dot_com/Screens/job_bio_page.dart';
import 'package:hustle_dot_com/Screens/company_bio_page.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hustle_dot_com/Model/jobDetails_model.dart';

class BioPage extends StatefulWidget {
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> with SingleTickerProviderStateMixin {
//Creates a tabcontroller variable which will be used to hold reference to and cycle //through the our different screens.
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
              Spacer(),
              Icon(Icons.share_sharp),

              SizedBox(
                width: 5,
              ),
            ],
          ),
          bottom: ,
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
              indicatorWeight: 3,
              indicatorColor: Colors.blue,
              tabs: <Widget>[
                Tab(
                  text: "Jobs",
                ),
                Tab(
                  text: "Company",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: TabBarView(
              // Tab Bar View
              controller: _tabController,
              children: <Widget>[JobBioPage(), CompanyBioPage()],
            ),
          ),
        ],
      ),
    );
  }
}
