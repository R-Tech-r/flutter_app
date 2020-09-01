import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/New%20Survey.dart';
import 'package:flutter_app/MainDrawer.dart';
import 'package:flutter_app/StyleScheme.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("Home", style: TextStyle(
            color: Colors.white
        ),),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white60,
              child: Stack(
                  children: [
                    Positioned(
                      top: 100,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("GEO TAGGING", style: headingStyle),
                            SizedBox(height: 5,),
                            Text("Department of Agriculture", style: TextStyle(
                                fontSize: 16
                            ),),
                            SizedBox(height: 30,),
                            InkWell(
                              onTap: openNewSurvey,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                    gradient: LinearGradient(
                                        colors: [Color(0xfff3953b), Color(0xffe57509)],
                                        stops: [0,1],
                                        begin: Alignment.topCenter
                                    )
                                ),
                                child: Center(
                                  child: Text("UPLOAD", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'roboto'
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.green.shade600,
                                  width: 20
                              )
                          ),

                          child: Container(
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.0),
                                gradient: RadialGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.redAccent
                                ]
                              )
                            ),
                          ),
                        ),
                        SizedBox(width: 50,),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.red,
                                  width: 20
                              )
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: RadialGradient(
                                    colors: [
                                      Colors.purpleAccent,
                                      Colors.white
                                    ]
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
              ),
              ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rakesh Singh", style: headingStyle,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: gradientStyle,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(
                    "Edit", style: headingStyle.copyWith(color: Colors.white
                  ),),
                )
              ],
            ),
            divider(),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("9876543210", style: headingStyle,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: gradientStyle,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(
                    "Edit", style: headingStyle.copyWith(color: Colors.white
                  ),),
                )
              ],
            ),
            divider(),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Agriculture Officer", style: headingStyle,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: gradientStyle,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(
                    "Edit", style: headingStyle.copyWith(color: Colors.white
                  ),),
                )
              ],
            ),
            divider(),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Zone", style: headingStyle,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: gradientStyle,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(
                    "Edit", style: headingStyle.copyWith(color: Colors.white
                  ),),

                )
              ],
            )
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text("New Survey")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cloud_upload),
              title: Text("Upload")
          ),
        ],
      ),
    );
  }

  Container divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 0.5,
      color: Colors.grey,
    );
  }
  void openNewSurvey()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewSurvey()),);
  }
}
