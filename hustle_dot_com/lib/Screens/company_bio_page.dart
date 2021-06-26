import 'package:flutter/material.dart';
import 'package:hustle_dot_com/Model/jobDetails_model.dart';
import 'package:getwidget/getwidget.dart';

class CompanyBioPage extends StatefulWidget {
  @override
  CompanyBioPageState createState() {
    return new CompanyBioPageState();
  }
}

class CompanyBioPageState extends State<CompanyBioPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 1,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
            thickness: 1,
            color: Colors.black,
          ),
          new ListTile(
            title: new Text(
              jobItemData[i].jobTitle,
              style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            //new Icon(Icons.favorite_border),

            subtitle: new Text(
              jobItemData[i].companyName,
              style: new TextStyle(color: Colors.black87, fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
