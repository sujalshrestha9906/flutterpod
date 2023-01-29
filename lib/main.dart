import 'package:vvh/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vvh/view/nextpage.dart';




void main(){
  runApp(NewP());
}

class NewP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(411, 866),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return  MaterialApp(
          theme: ThemeData.light().copyWith(
            // appBarTheme: AppBarTheme(
            //
            // )
          ),
          home: NewPage(),
          debugShowCheckedModeBanner: false,
        );
      },

    );
  }
}
