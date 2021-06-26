import 'package:flutter/material.dart';
import 'package:hustle_dot_com/Model/jobDetails_model.dart';
import 'package:hustle_dot_com/Model/salariesDetails_model.dart';
import 'package:getwidget/getwidget.dart';

class SalariesPage extends StatefulWidget {
  @override
  SalariesPageState createState() {
    return new SalariesPageState();
  }
}

class SalariesPageState extends State<SalariesPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: jobItemData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
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
                  salaryItemData[i].salary,
                  style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                //new Icon(Icons.favorite_border),
              ],
            ),
            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [new Text(
                jobItemData[i].companyName,
                style: new TextStyle(color: Colors.black87, fontSize: 18.0),

              ),
                new Text(jobItemData[i].jobTitle,
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),)
              ],
            ),
            trailing: new Icon(Icons.favorite_border)

          )
        ],
      ),
    );
  }
}
