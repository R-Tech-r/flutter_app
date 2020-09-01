import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Upload.dart';
class Newsurvey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewSurvey(),
    );
  }
}
class NewSurvey extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewSurveyState();
  }
}
class _NewSurveyState extends State<NewSurvey> {
  final minimumPadding = 3.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text('New Survey')
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/farm1.png')
                  )
              )
            ),

            Padding(
              padding: EdgeInsets.only(top: minimumPadding,bottom: minimumPadding),

                child: TextField(
              decoration: InputDecoration(
                labelText: 'Scheme',
                    hintText: 'Enter the scheme name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.0)
                )
              ),
            ) ),
            Padding(
              padding: EdgeInsets.only(top: minimumPadding,bottom: minimumPadding),
                child:TextField(
              decoration: InputDecoration(
                  labelText: 'Select Project',
                  hintText: 'Enter the project name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0)
                  )
              ),
            )),
            Padding(
                padding: EdgeInsets.only(top: minimumPadding,bottom: minimumPadding),
                child:TextField(
                  decoration: InputDecoration(
                      labelText: 'Scheme',
                      hintText: 'Enter the scheme name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0)
                      )
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: minimumPadding,bottom: minimumPadding),
                child:TextField(
                  decoration: InputDecoration(
                      labelText: 'Item Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: minimumPadding,bottom: minimumPadding),
                child:TextField(
                  decoration: InputDecoration(
                      labelText: 'No.of items',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0)
                      )
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: minimumPadding,bottom: minimumPadding),
                child:TextField(
                  decoration: InputDecoration(
                      labelText: 'Farmer Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0)
                      )
                  ),
                )),
            SizedBox(height: 10,),
            InkWell(
              onTap: openUpload,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [Color(0xfff3953b), Color(0xffe57509)],
                        stops: [0,1],
                        begin: Alignment.topCenter
                    ),
                ),
                child: Center(
                  child: Text("SAVE", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'roboto'
                  ),),
                ),
              ),
            ),
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
              title: Text("New Survey"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cloud_upload),
              title: Text("Upload")
          ),
        ],
      ),
    );
  }
  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('assets/images/farm.png');
    Image image =Image(image: assetImage,width: 70.0,height: 70.0,);

    return Container(child: image, margin: EdgeInsets.all(-minimumPadding *3),);
  }
  void openUpload()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload()),);
  }
}