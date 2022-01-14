import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux_project/Model/itemmodel.dart';
import 'package:easy_localization/easy_localization.dart';

class Secondpage extends StatelessWidget {

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
            style: TextStyle(color: Colors.black, fontSize: 12),
          )
        ],
      ),
    );
  }
  ItemData data;

  Secondpage({this.data}) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  image: AssetImage(data.image),
                  height: 300,
                  fit: BoxFit.cover),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 230,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      data.title,
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange[50]),
                    child: IconButton(
                        iconSize: 50,
                        icon: Image(
                          image: AssetImage('assets/images/play.png'),
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    data.description,
                    style: TextStyle(fontSize: 21, color: Colors.grey[600]),
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage(data.imageauther),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            data.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            data.numOfFollowers,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),Spacer()
            ,Container(
                margin: EdgeInsets.symmetric(vertical:70),
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

                  ],
                ),
            ),],
          ),
        ));
  }
}
