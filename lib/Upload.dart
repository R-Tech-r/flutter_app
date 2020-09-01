import 'package:flutter/material.dart';
import 'package:flutter_app/StyleScheme.dart';
import 'package:flutter_app/ViewData.dart';
import 'package:flutter_app/MainDrawer.dart';
class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: upload(),
    );
  }
}
class upload extends StatefulWidget {
  @override
  _uploadState createState() => _uploadState();
}

class _uploadState extends State<upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("Upload", style: TextStyle(
            color: Colors.white
        ),),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.all(21),
        child: ListView(
          children: <Widget>[
            CustomListTile(Icons.panorama_fish_eye,'Farm5',()=>{}),
            CustomListTile(Icons.panorama_fish_eye,'Farm4',()=>{}),
            CustomListTile(Icons.panorama_fish_eye,'Farm3',()=>{}),
            CustomListTile(Icons.panorama_fish_eye,'Farm2',()=>{}),
            CustomListTile(Icons.panorama_fish_eye,'Farm1',()=>{}),
            SizedBox(height: 30,),
            InkWell(
              onTap: openViewData,
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
  void openViewData()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewData()),);
  }
}

class CustomListTile extends StatelessWidget {

  IconData icons;
  String text;
  Function onTap;

  CustomListTile(this.icons,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 0.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icons),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Text(text,style: TextStyle(fontSize: 16.0),),
                    )
                  ],
                ),
                Icon(Icons.cloud_upload),
                  ],
                    )


            ),
          ),
        ),);
  }

}
