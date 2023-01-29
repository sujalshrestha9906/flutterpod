import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vvh/models/book.dart';

class NewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: double.infinity,

        child: Column(
          children: [
            Image.asset(books[0].imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 90),
                          child: Text(books[0].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black54
                          ),),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(books[0].ratings),
                            ),
                            Text(books[0].genre,
                            style: TextStyle(
                                color: Colors.lightBlue,
                              fontWeight: FontWeight.w500,
                              fontSize: 13
                            ),)
                          ],
                        ),
                      ],

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                      child: Text(books[0].details,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                      ),
                      textAlign: TextAlign.start,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(child: Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 20,left: 16,right: 16),
                            child: Text('Read More',
                            style: TextStyle(

                              fontSize: 20
                            ),
                            ),
                          ),
                          onPressed:(){
                            print('Read More');
                          },),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: OutlinedButton(child: Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 20,left: 16,right: 16),
                            child: Text('More Info',
                              style: TextStyle(
                                color: Colors.grey,
                                  fontSize: 20
                              ),
                            ),
                          ),
                          onPressed:(){
                            print('More Info');
                          },),
                        ),

                      ],
                    )
                  ],
                ),

              ),

            )
          ],
        ),
      ),
    );
  }
}
