import 'package:flutter/material.dart';
import 'package:hustle_dot_com/Model/companyDetails_model.dart';
import 'package:hustle_dot_com/Model/jobDetails_model.dart';
import 'package:getwidget/getwidget.dart';

class CompaniesPage extends StatefulWidget {
  @override
  CompaniesPageState createState() {
    return new CompaniesPageState();
  }
}

class CompaniesPageState extends State<CompaniesPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: companyItemData.length,
        itemBuilder: (context, i) => new Column(children: <Widget>[
              new Divider(
                height: 10.0,
                thickness: 1,
                color: Colors.black,
              ),
              new ListTile(
                leading: new GFAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  shape: GFAvatarShape.square,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(jobItemData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      companyItemData[i].companyName,
                      style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    //new Icon(Icons.favorite_border),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(
                      companyItemData[i].numberOfReviews,
                      style:
                          new TextStyle(color: Colors.black87, fontSize: 18.0),
                    ),
                  ],
                ),
              )
            ]));
  }
}
