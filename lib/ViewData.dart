import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/StyleScheme.dart';
import 'package:flutter_app/MainDrawer.dart';
class ViewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: viewData(),
    );
  }
}
class viewData extends StatefulWidget {
  @override
  _viewDataState createState() => _viewDataState();
}

class _viewDataState extends State<viewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("View Data", style: TextStyle(
            color: Colors.white
        ),),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/farm1.png')
                  )
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upload Pending", style: headingStyle.copyWith(color: Colors.green),),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: gradientStyle,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Text("Delete", style: headingStyle.copyWith(
                      color: Colors.white
                  ),),
                )
              ],
            ),
            divider(),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Farmer:P Ibotombi", style: headingStyle,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Text("Edit",style: headingStyle.copyWith(color: Colors.white
                  ),),
                )
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Phone:9876543210", style: headingStyle,),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Village:Moirang", style: headingStyle,),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Type of farm: Paddy", style: headingStyle,),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text("Area 20.5 Hactare", style: headingStyle,),
               ],
            ),
        ]
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value)=>{},
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
  Container divider()
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 1,
      color: Colors.grey,
    );
  }
}
