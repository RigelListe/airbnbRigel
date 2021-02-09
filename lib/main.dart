

import 'package:airbnb/src/views/detail.dart';
import 'package:airbnb/src/views/home.dart';
import 'package:airbnb/src/views/introView.dart';
import 'package:airbnb/src/views/singUpView.dart';
import 'package:airbnb/src/views/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer_util.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(                           //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(                  //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation);  //initialize SizerUtil
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Home(),
            );
          },
        );
      },
    );
  }
}


