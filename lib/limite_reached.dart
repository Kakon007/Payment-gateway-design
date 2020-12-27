import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:payment_upgrade_flutter/data_List.dart';

class LimitReached extends StatefulWidget {
  @override
  _LimitReachedState createState() => _LimitReachedState();
}

class _LimitReachedState extends State<LimitReached> {
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
              children:[
                // Image.network('https://flutter-examples.com/wp-content/uploads/2019/12/android_icon.png',
                //   width: 50, height: 50, fit: BoxFit.contain,),
                Image.asset("asset/error.png",width: 50, height: 50, fit: BoxFit.contain,),
                SizedBox(height: 5,),
                Text('Limit reached!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 6,),
                Text("Sorry! You have reached your daily/monthly job application limit."
                    " To apply for more jobs, please subscribe to our paid membership.",style: TextStyle(fontSize: 20,color: HexColor("#323232"),fontWeight: FontWeight.values[3]),),
              ]
          ),
          content:Text("Do you want to continue?"),
          actions: <Widget>[
            RaisedButton(onPressed:(){
              Navigator.of(context).pop();
            },child: Text("Cancel",),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
               // side: BorderSide(color: Colors.grey),

            ),
            color: Colors.yellow[600],

            ),
            SizedBox(width: 25,),
            RaisedButton(onPressed:(){
              //Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DataList()));
            },child: Text("Yes, Show Me the Details",),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  //side: BorderSide(color: Colors.grey)
              ),
              color: Colors.yellow[600],),
          ],
        );
      },
    );
  }

  ///congo////
  ///
  showAlertCongo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
              children:[
                // Image.network('https://flutter-examples.com/wp-content/uploads/2019/12/android_icon.png',
                //   width: 50, height: 50, fit: BoxFit.contain,),
                Image.asset("asset/checked.png",width: 50, height: 50, fit: BoxFit.contain,),
                SizedBox(height: 10,),
                Text('Congratulations!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 6,),
                Center(
                  child: Text("You are successfully Upgrade! Now you are a Standard JobXprss Member."
                      "Thank you for being with us",style: TextStyle(fontSize: 20,color: HexColor("#323232"),fontWeight: FontWeight.values[3]),),
                ),
              ]
          ),
          //content:Text("Do you want to continue?"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: RaisedButton(onPressed:(){
                Navigator.of(context).pop();
              },child: Text("OK",),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  //side: BorderSide(color: Colors.grey)
                ),
                color: Colors.yellow[600],),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JobXprss",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellow[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              RaisedButton(
                onPressed: (){
                  showAlert(context);
                },
                child: Text("Upgrade"),
              ),
              RaisedButton(
                onPressed: (){
                  showAlertCongo(context);
                },
                child: Text("Congrations"),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
