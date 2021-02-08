import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';


class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 241, 241, 1),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
              Container(
              height: 6.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                ),
                color: Color.fromRGBO(240, 241, 241, 1),
              ),
            ),
            Stack(
            
              children: [  
                  Container(
                    padding: EdgeInsets.only(left: 6.0.w),
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Color.fromRGBO(33, 45, 82, 1),
                    ),
                  ),             
                Center(
                  child: Padding(
                  padding: EdgeInsets.only(right: 1.0.w),
                    child: Text(
                      'Select dates',
                      style: TextStyle(
                        fontSize: 15.4.sp,
                        color: Color.fromRGBO(33, 45, 82, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ]
            ),
            SizedBox(height: 4.0.h),
            
           
            
          ],
        ),
      
    );
  }


}
