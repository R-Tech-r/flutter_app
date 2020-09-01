import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/Upload.dart';
import 'package:flutter_app/New Survey.dart';
import 'package:flutter_app/ViewData.dart';
import 'package:flutter_app/ViewData.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/farm.png'),fit: BoxFit.fill),
                    ),
                  ),
                  Text('Rebika',style: TextStyle(fontSize: 22, color: Colors.white,),
                  ),
                 Text('itadi12@gmail.com',style: TextStyle(color: Colors.white,),
                 )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home',style: TextStyle(fontSize: 18,),),
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())
              );
            }
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('New Survey',style: TextStyle(fontSize: 18,),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewSurvey())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text('View Data',style: TextStyle(fontSize: 18,),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewData())
              );
            },
          ) ,
          ListTile(
            leading: Icon(Icons.cloud_upload),
            title: Text('Upload',style: TextStyle(fontSize: 18,),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload())
              );
            }
          ) ,
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile',style: TextStyle(fontSize: 18,),),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('setting' ,style: TextStyle(fontSize: 18,),),
            onTap: null,
          )
        ],
      ),
    );
  }
}