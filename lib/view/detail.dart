import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      // backgroundColor: Colors.blue.withOpacity(0.4),
        backgroundColor: Color(0xFFF2F5F9),
        appBar: AppBar(
          backgroundColor: Color(0xFFF2F5F9),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 30),
            child: Text(
                'Hi John,', style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 28,
            )
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10,top: 10),
              child: Icon(CupertinoIcons.search, color: Colors.black.withOpacity(0.8),size: 30,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25,top: 10),
              child: Icon(Icons.notifications_none_rounded, color: Colors.black.withOpacity(0.8),size: 35,),
            ),
            SizedBox(width: 0,)
          ],
        ),

        body:
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(0,112,132,0.9),
          ),

          height: 135,
          width: double.infinity,

          child:Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 25),
                child: Text(
                  'Your \nBookself',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),

              ),Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Image(
                  image: AssetImage('assets/images/pngegg.png'),
                  width: 100,
                  height: 120,
                ),
              ),
            ],
          ),

        )


    );



  }
}
