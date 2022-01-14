import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_ux_project/DATA/dummydata.dart';
import 'package:ui_ux_project/Model/itemmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ui_ux_project/ui/Screenswidget/secondscreent.dart';

class FirstScreen extends StatelessWidget {
  BuildContext context;

  FirstScreen({this.context}) {}

  Widget icons({String image, String title}) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            child: IconButton(
              icon: Image(
                image: AssetImage(image),
              ),
              iconSize: 40,
              onPressed: () {},
            ),
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget slide(ItemData itemData) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (c) => Secondpage(
                    data: itemData,
                  )));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                itemData.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  itemData.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  itemData.name,
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Authors({String image, String name}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 46,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 14, color: Colors.black),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background1.jpg'),
        fit: BoxFit.cover,
      )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Center(
              child: Text(
                "title_app".tr(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                    letterSpacing: 4.0),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "descripe_app".tr(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                    fontSize: 14,
                    wordSpacing: 2.5),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      fillColor: Color(0xFF789086),
                      filled: true,
                      hintText: 'Type_keyword'.tr(),
                      hintStyle:
                          TextStyle(color: Colors.grey[350], fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(200))),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  icons(
                      image: 'assets/images/popular.png',
                      title: 'Popular'.tr()),
                  icons(
                      image: 'assets/images/trend.png', title: 'Trending'.tr()),
                  icons(
                      image: 'assets/images/history.png', title: 'Recent'.tr()),
                  icons(
                      image: 'assets/images/magicwand.png', title: 'Magic'.tr())
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image(
              image: AssetImage('assets/images/minus.png'),
              color: Colors.grey,
              width: 30,
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: 500,
              height: 750,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: Text(
                      'Handpiched'.tr(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/minus.png'),
                      color: Colors.orange,
                      width: 30,
                    ),
                  ),
                  Column(
                    children: data.map((e) {
                      return slide(e);
                    }).toList(),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text('Top_Authors'.tr(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Authors(
                          image: 'assets/images/photo1.jpg', name: 'Jane Rose'),
                      Authors(
                          image: 'assets/images/photo2.jpg',
                          name: 'Robert Dun'),
                      Authors(
                          image: 'assets/images/photo3.jpg', name: 'Anastacia'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

