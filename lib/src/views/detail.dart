import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Detail extends StatefulWidget {
  Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Stack(
            children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                    ),
                    width: double.infinity,
                    height: double.infinity,            
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                      child: Image(
                        fit: BoxFit.cover,
                           image: NetworkImage(
                            'https://i.pinimg.com/originals/e2/c0/55/e2c055f585306a3d7a7fa7cbd43f5948.jpg'

                          ),
                      )
                    ), 
                  ),
                Positioned(
                  top: 55.0.h,
                  child: Container( 
                    decoration: BoxDecoration(
                       color: Color.fromRGBO(240, 241, 241, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                    ),
                    width: 100.0.w,
                    height: 45.0.h,
                    child: Column(
                      
                      children: [

                        SizedBox(height: 1.0.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5.0.h),
                              child: Text(
                                'Soneve Kiri',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'PlayFair',
                                  fontSize: 17.5.sp,
                                  color: Color.fromRGBO(33, 45, 82, 1)
                                ),
                              )
                            ),

                            IconButton(
                              padding: EdgeInsets.only(right: 5.0.h),
                              onPressed: (){
                                setState(() {
                                  _isPressed = !_isPressed;
                                });
                              },
                              
                              icon: _isPressed 
                              ? Icon(
                                Icons.favorite_outlined,
                                color: Color.fromRGBO(71, 148, 255, 1),
                                size: 3.0.h,
                              ) : 
                              Icon(
                                Icons.favorite_outline,
                                color: Color.fromRGBO(71, 148, 255, 1),
                                size: 3.0.h,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.6.w ),
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Color.fromRGBO(153, 163, 196, 1),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 1.4.w ),
                              child: Text(
                                'Bashundhara, Dhaka, Bangladesh',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 74, 106, 1),
                                  fontWeight: FontWeight.w500
                                )
                              ),
                            )
                          ]
                        ),

                        SizedBox(height: 1.0.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.6.w ),
                              child: Icon(
                                Icons.star_rate_rounded,
                                color: Color.fromRGBO(71, 148, 255, 0.8),

                              ),
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Color.fromRGBO(71, 148, 255, 0.8),

                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Color.fromRGBO(71, 148, 255, 0.8),
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Color.fromRGBO(71, 148, 255, 0.8),

                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Color.fromRGBO(71, 148, 255, 0.8),

                            ),
                            SizedBox(width: 1.5.w),
                            Padding(
                               padding: EdgeInsets.only(bottom: 1.0.w ),
                              child: Text(
                                '9.7',
                                style: TextStyle(
                                  fontFamily: 'PlayFair',
                                  fontSize: 12.5.sp,
                                  color: Color.fromRGBO(71, 148, 255, 0.8),
                                )
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.0.h),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1.0.w),

                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 7.5.w),
                              child: Container(
                                width: 26.0.w,
                                height: 5.0.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadiusDirectional.circular(6),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 3.0.w),
                                      child: Icon(
                                        
                                        Icons.supervisor_account_rounded,
                                        color: Color.fromRGBO(153, 163, 196, 1),
                                        size: 5.0.w,
                                      ),
                                    ),
                                    Text(
                                      '2 Adults',
                                      style: TextStyle(
                                        color: Color.fromRGBO(64, 74, 106, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.0.sp
                                      )
                                    )
                                  ],
                                )
                              ),
                            ),

                            Container(
                              width: 26.0.w,
                              height: 5.0.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadiusDirectional.circular(6),
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.0.w),
                                    child: Icon(
                                      
                                      Icons.hotel_outlined,
                                      color: Color.fromRGBO(153, 163, 196, 1),
                                      size: 4.5.w,
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 4.0.w),
                                    child: Text(
                                      '1 Bed',
                                      style: TextStyle(
                                        color: Color.fromRGBO(64, 74, 106, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.0.sp
                                      )
                                    ),
                                  )
                                ],
                              )
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 7.5.w),
                              child: Container(
                                width: 26.0.w,
                                height: 5.0.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadiusDirectional.circular(6),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 3.0.w),
                                      child: Icon(
                                        
                                        Icons.wifi,
                                        color: Color.fromRGBO(153, 163, 196, 1),
                                        size: 4.5.w,
                                      ),
                                    ),
                                    Text(
                                      'Free wifi',
                                      style: TextStyle(
                                        color: Color.fromRGBO(64, 74, 106, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.0.sp
                                      )
                                    )
                                  ],
                                )
                              ),
                            ),
                       

                          ],
                        ),
                          SizedBox(height: 4.4.h),

                            Padding(
                              padding: EdgeInsets.only(right: 12.6.w ),
                              child: Text(
                                'Nulla Lorem mollit cupidatat irure. Laborum is',
                                style: TextStyle(      
                                  fontSize: 10.0.sp,
                                  color: Color.fromRGBO(153, 163, 196, 1),
                                ), 
                              ),
                            ),
                          SizedBox(height: 0.7.h),

                            Padding(
                              padding: EdgeInsets.only(right: 9.9.w ),
                              child: Text(
                                'magna nulla duis ullamco cillium dolor Voluptat',
                                style: TextStyle(      
                                  fontSize: 10.0.sp,
                                  color: Color.fromRGBO(153, 163, 196, 1),
                                ), 
                              ),
                            ),

                        SizedBox(height: 0.7.h),

                            Padding(
                              padding: EdgeInsets.only(right: 62.0.w ),
                              child: Text(
                                'exercitation.',
                                style: TextStyle(      
                                  fontSize: 10.0.sp,
                                  color: Color.fromRGBO(153, 163, 196, 1),
                                ), 
                              ),
                            ),
                        SizedBox(height: 4.88.h),   

                        Container(
                          width: double.infinity,
                          height: 7.36.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(30),
                            color: Color.fromRGBO(71, 148, 255, 1),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.0.w),
                                child: Text(
                                  '120\$ /',
                                  style: TextStyle(                                  
                                    fontSize: 14.0.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                              Text(
                                '  night',
                                style: TextStyle(                                  
                                  fontSize: 10.0.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                                )
                              ),

                              Padding(
                                padding:  EdgeInsets.only(left: 39.8.w),
                                child: Container(
                                  width: 30.0.w,
                                  height: 6.0.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white, 
                                  ),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 1.2.w),
                                      child: Row(
                                        children: [
                                          Text(
                                            'BOOK',
                                            style: TextStyle(
                                              color: Color.fromRGBO(64, 74, 106, 1),
                                              fontSize: 10.4.sp,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                          Text(
                                            ' ROOM',
                                            style: TextStyle(
                                              color: Color.fromRGBO(64, 74, 106, 1),
                                              fontSize: 10.4.sp,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ),
                              ),
                            ],
                          )



                        ),
                      ],
                    )
                  ),
                )       
            ],
          ),
    );
  }
}