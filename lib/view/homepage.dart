import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vvh/models/book.dart';



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

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15, left: 20,right: 20),

              child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Container(
                          height: 120.h,
                          width: double.infinity,
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Your \nBookSelf',
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                              Image.asset('assets/images/pngegg.png'),
                            ],
                          ),

                        )],
                    ),

                  ),

              ),

            Container(
                    child:Column(
                      children: [
                        Container(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: books.length,
                            itemBuilder: (context,index){
                            final book = books[index];
                            return Container(
                              width: 370.w,
                              // color: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.only(right: 15, left: index == 0? 10:0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(book.imageUrl,
                                      width: 130.w,
                                          height: 260.h,
                                      fit: BoxFit.fill),
                                    ),
                                    // SizedBox(width: 10,),
                                    Expanded(
                                      child: Card(

                                        child: Container(
                                          padding: EdgeInsets.only(left: 10),
                                          height: 150.h,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround ,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(book.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),),
                                              Text(book.details, maxLines: 4,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text(book.ratings),
                                                  Text(book.genre,style: TextStyle(fontWeight: FontWeight.bold),),

                                                ],
                                              )

                                            ],

                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                            },
                          ),
                        )
                      ],
                    )
                  ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20),
                  child: Text('You may also like',style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),

                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 300.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: books.length,
                      itemBuilder: (context, index){
                            final book = books[index];
                            return Container(
                              width: 180.w,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(book.imageUrl, width: 130.w,height: 240.h,),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(book.title,style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,

                                        ),
                                        textAlign: TextAlign.center,),
                                        Text(book.genre)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                      },),
                    ),
                  )
                ],
              ),
            ),
          ],

        ),


        );



  }
}

// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final actualHeight = height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         body: Column(
//           children: [
//             Container(
//               height: actualHeight*0.25,
//               color: Colors.black,
//             ),
//             Container(
//               height: actualHeight*0.25,
//               child: LayoutBuilder(builder: (context,constraints){
//                 return Row(
//                   children: [
//                     Container(
//                       color: Colors.yellow,
//                       width: constraints.maxWidth * 0.5,
//                       height: constraints.maxHeight,
//                     )
//                   ],
//                 );
//               }),
//               color: Colors.purpleAccent,
//             ),
//             Container(
//               height: actualHeight*0.25,
//               color: Colors.redAccent,
//             ),
//             Container(
//               height: actualHeight*0.25,
//               color: Colors.blueAccent,
//             )
//           ],
//         )
//
//     );
//   }
// }
