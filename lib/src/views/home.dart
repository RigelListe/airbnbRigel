import 'package:airbnb/src/cards/cards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final TextEditingController _searchController = TextEditingController();

  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  bool _isPressed5 = false;


  int _currentIndex = 0;

  List cardList = [CardHome1(), CardHome2(), CardHome3() ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(240, 241, 241, 1),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(240, 241, 241, 1),
          toolbarHeight: 8.6.h,
          actions: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.0.h),
              child: Container(
                padding: EdgeInsets.only(right: 7.0.w),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.seduccionatraccion.com/wp-content/uploads/2013/03/mujer-sexo-vacaciones.jpg'),
                ),
              ),
            )
          ],
          leading: Padding(
            padding: EdgeInsets.only(left: 5.0.w),
            child: IconButton(
              //padding: EdgeInsets.only(bottom: 1.0.h),
              onPressed: (){},
              icon: Image.asset(
                'assets/images/home/iconMenuHome.png',
                height: 20.0.h,
                width: 28.0.w,
              )
            ),
          ),
        ),

        body: Column(
          
          children: [
            //SizedBox(height: 2.0),
            Padding(
              padding: EdgeInsets.only(left: 6.3.w),
              child: Text(
                'Let\'s Find Your',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 21.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 6.3.w),
              child: Text(
                'Apartaments',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 21.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),

            SizedBox(height:4.0.h),

            Center(
              child: Container(
                //padding: EdgeInsets.only(right: 8.0.w),
                child: _searchApartament()
              ),
            ),

            SizedBox(height: 2.2.h),

            Container(
              padding: EdgeInsets.only(left: 6.3.w),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 17.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),

            SizedBox(height: 2.2.h),
            
            CarouselSlider(
              options: CarouselOptions(
                
                height: 84.0.w,
                
                //aspectRatio: 2.0,
                autoPlay: false,
                viewportFraction: 0.60,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                  //aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  
                  return Container(
                    
                    //margin: EdgeInsets.only(left:1.0.w ,right: 1.0.w),
                   // width: displayWidth(context) * 1,
                   // height: displayHeight(context) * 1, //Con esto manejamos el ratio de la imagen
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.54,
                    decoration: BoxDecoration( 
                      color: Color.fromRGBO(240, 242, 243, 1),
                      borderRadius: BorderRadius.circular(320),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FittedBox(child: card, fit: BoxFit.fill),
                    )
                  );
                });
              }).toList(),
            ),

            SizedBox(height: 2.2.h),

            _botoneraInferior()
           
          ]
        ),
        
    );
  }

    Widget _searchApartament(){
      return Container(
        height: 7.6.h,
        width: 88.0.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: TextField(
          style: TextStyle(
            color: Color.fromRGBO(33, 45, 82, 1),
            decoration: TextDecoration.none  
          ),
          //focusNode: _emailFocusNode,
          keyboardType: TextInputType.streetAddress,
          //keyboardActionIcon: TextInputAction.next,
          controller: _searchController,
          decoration: InputDecoration (    
            suffixIcon: Padding(
              padding: EdgeInsets.only(top: 1.0.w, right: 1.0.w),
              child: Container(
                width: 6.6.h,
                height: 6.6.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(71, 148, 255, 1),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
            contentPadding: EdgeInsets.only(left: 20.0, top:21.0),
            hintText: 'Search your apartamentes....',
            hintStyle: TextStyle(
              color: Color.fromRGBO(153, 163, 196, 1),
              decoration: TextDecoration.none
            ),
            fillColor: Colors.white,
            //labelText: 'Email',   
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none

          ),
        ),
      );

      
  }
  Widget _botoneraInferior(){
      return Container(
        height: 9.2.h,
        width: 89.0.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            _isPressed1 ?
            Stack(
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 1.0.w),
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(71, 148, 255, 1), 
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.2.h ),
                      child: Text(
                        '.',
                        style: TextStyle(
                          fontSize: 24.0.sp,
                          color: Colors.white
                        )
                      ),
                    ),
                  ),
                ),
              Padding(
                padding:  EdgeInsets.only(top: 1.7.h),
                child: Container(
                  padding:  EdgeInsets.only(left: 0.7.w),
                  child: IconButton(
                    color: Colors.white,
                  onPressed: (){
                    setState(() {
                      _isPressed1 = !_isPressed1;
                      _isPressed2 = false;
                      _isPressed3 = false;
                      _isPressed4 = false;
                      _isPressed5 = false;
                    });
                  },

                  icon: Icon(
                    Icons.home_work_outlined,
                  ),
            ),
                ),
              ),
              ],
            ):

            Container(
              width: 13.0.w,
              height: 13.0.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent, 
              ),
              child: 
              IconButton(
              color: Color.fromRGBO(153, 163, 196, 1),
              onPressed: (){
                setState(() {
                  _isPressed1 = !_isPressed1;
                  _isPressed2 = false;
                  _isPressed3 = false;
                  _isPressed4 = false;
                  _isPressed5 = false;
                });
              },

              icon: Icon(
                Icons.home_work_outlined,
                size: 3.0.h,
              ),
            ),
            ),
            
            _isPressed2 ?
            Stack(
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 1.0.w),
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(71, 148, 255, 1), 
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.2.h ),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.3.w ),
                        child: Text(
                          '.',
                          style: TextStyle(
                            fontSize: 24.0.sp,
                            color: Colors.white
                          )
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding:  EdgeInsets.only(top: 1.7.h),
                child: Container(
                  padding:  EdgeInsets.only(left: 0.7.w),
                  child: IconButton(
                    color: Colors.white,
                  onPressed: (){
                    setState(() {
                      _isPressed2 = !_isPressed2;
                      _isPressed1 = false;
                      _isPressed3 = false;
                      _isPressed4 = false;
                      _isPressed5 = false;
                    });
                  },

                  icon: Icon(
                   Icons.favorite_outline,
                  ),
            ),
                ),
              ),
              ],
            ):

            Container(
              width: 13.0.w,
              height: 13.0.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent, 
              ),
              child: 
              IconButton(
              color: Color.fromRGBO(153, 163, 196, 1),
              onPressed: (){
                setState(() {
                  _isPressed2 = !_isPressed2;
                  _isPressed1 = false;
                  _isPressed3 = false;
                  _isPressed4 = false;
                  _isPressed5 = false;
                });
              },

              icon: Icon(
                Icons.favorite_outline,
                size: 3.0.h,
              ),
            ),
            ),

            _isPressed3 ?
            Stack(
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 1.0.w),
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(71, 148, 255, 1), 
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.2.h ),
                      child: Container(
                         padding: EdgeInsets.only(left: 0.3.w ),
                        child: Text(
                          '.',
                          style: TextStyle(
                            fontSize: 24.0.sp,
                            color: Colors.white
                          )
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding:  EdgeInsets.only(top: 1.7.h),
                child: Container(
                  padding:  EdgeInsets.only(left: 0.7.w),
                  child: IconButton(
                    color: Colors.white,
                  onPressed: (){
                    setState(() {
                      _isPressed3 = !_isPressed3;
                      _isPressed2 = false;
                      _isPressed1 = false;
                      _isPressed4 = false;
                      _isPressed5 = false;
                    });
                  },

                  icon: Icon(
                    Icons.add_location_outlined,
                  ),
            ),
                ),
              ),
              ],
            ):

            Container(
              width: 13.0.w,
              height: 13.0.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent, 
              ),
              child: 
              IconButton(
              color: Color.fromRGBO(153, 163, 196, 1),
              onPressed: (){
                setState(() {
                  _isPressed3 = !_isPressed3;
                  _isPressed2 = false;
                  _isPressed1 = false;
                  _isPressed4 = false;
                  _isPressed5 = false;
                });
              },

              icon: Icon(
                Icons.add_location_outlined,
                size: 3.0.h,
              ),
            ),
            ),

            _isPressed4 ?
            Stack(
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 1.0.w),
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(71, 148, 255, 1), 
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.2.h ),
                      child: Text(
                        '.',
                        style: TextStyle(
                          fontSize: 24.0.sp,
                          color: Colors.white
                        )
                      ),
                    ),
                  ),
                ),
              Padding(
                padding:  EdgeInsets.only(top: 1.7.h),
                child: Container(
                  padding:  EdgeInsets.only(left: 0.7.w),
                  child: IconButton(
                    color: Colors.white,
                  onPressed: (){
                    setState(() {
                      _isPressed4 = !_isPressed4;
                      _isPressed2 = false;
                      _isPressed3 = false;
                      _isPressed1 = false;
                      _isPressed5 = false;
                    });
                  },

                  icon: Icon(
                    Icons.mail_outline,
                  ),
            ),
                ),
              ),
              ],
            ):

            Container(
              width: 13.0.w,
              height: 13.0.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent, 
              ),
              child: 
              IconButton(
              onPressed: (){
                setState(() {
                  _isPressed4 = !_isPressed4;
                  _isPressed2 = false;
                  _isPressed3 = false;
                  _isPressed1 = false;
                  _isPressed5 = false;
                });
              },

              icon: Icon(
                Icons.mail_outline,
                color: Color.fromRGBO(153, 163, 196, 1),
                size: 3.0.h,
              ),
            ),
            ),

            _isPressed5 ?
            Stack(
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 1.0.w),
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(71, 148, 255, 1), 
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.2.h ),
                      child: Text(
                        '.',
                        style: TextStyle(
                          fontSize: 24.0.sp,
                          color: Colors.white
                        )
                      ),
                    ),
                  ),
                ),
              Padding(
                padding:  EdgeInsets.only(top: 1.7.h),
                child: Container(
                  padding:  EdgeInsets.only(left: 0.7.w),
                  child: IconButton(
                    color: Colors.white,
                  onPressed: (){
                    setState(() {
                      _isPressed5 = !_isPressed5;
                      _isPressed2 = false;
                      _isPressed3 = false;
                      _isPressed4 = false;
                      _isPressed1 = false;
                    });
                  },

                  icon: Icon(
                    Icons.perm_identity,
                  ),
            ),
                ),
              ),
              ],
            ):

            Container(
              width: 13.0.w,
              height: 13.0.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent, 
              ),
              child: 
              IconButton(
              onPressed: (){
                setState(() {
                  _isPressed5 = !_isPressed5;
                  _isPressed2 = false;
                  _isPressed3 = false;
                  _isPressed4 = false;
                  _isPressed1 = false;
                });
              },

              icon: Icon(
                Icons.perm_identity,
                color: Color.fromRGBO(153, 163, 196, 1),
                size: 3.0.h,
              ),
            ),
            ),


   

            
          ]
        )
      );
      
  }




}

/*
                

                Stack(
                  children: [
                    _isPressed1 ?
                    Stack(
                      children: [
                        Container(
                          //padding: EdgeInsets.only(right: 1.0.w),
                            width: 13.0.w,
                            height: 13.0.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(71, 148, 255, 1), 
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 1.2.h ),
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                    fontSize: 24.0.sp,
                                    color: Colors.white
                                  )
                                ),
                              ),
                            ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0.w),
                          child: IconButton(
                            onPressed: (){
                          setState(() {
                            _isPressed1 = !_isPressed1;
                            _isPressed2 = false;
                            _isPressed3 = false;
                            _isPressed4 = false;
                            _isPressed5 = false;
                          });
                      },

                          icon: Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                          size: 3.0.h,
                      )
                          ),
                        )
                      ],
                    ):
                      
                    IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                     
                      onPressed: (){
                        setState(() {
                          _isPressed1 = !_isPressed1;
                          _isPressed2 = false;
                          _isPressed3 = false;
                          _isPressed4 = false;
                          _isPressed5 = false;
                        });
                      },
                      
                      icon: Icon(
                        Icons.perm_identity,
                        color: Color.fromRGBO(153, 163, 196, 1),
                        size: 3.0.h,                             
                      ),
                    )
                  ],
                ),

                */
























                /*
                Stack(
                  children: [
                    _isPressed2 ?
                    Container(
                      padding: EdgeInsets.only(right: 1.2.w),
                        width: 13.0.w,
                        height: 13.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(71, 148, 255, 1),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.2.h ),
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 24.0.sp,
                                color: Colors.white
                              )
                            ),
                          ),
                        ),
                      ):
                      Container(),
                    IconButton(
                      padding: EdgeInsets.only(top: 2.4.h),
                      onPressed: (){
                        setState(() {
                          _isPressed2 = !_isPressed2;
                          _isPressed1 = false;
                          _isPressed3 = false;
                          _isPressed4 = false;
                          _isPressed5 = false;
                        });
                      },
                      
                      icon: _isPressed2
                      ?                      
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 3.0.h,
                      )
                      :
                      Icon(
                        Icons.favorite_outline,
                        color: Color.fromRGBO(153, 163, 196, 1),
                        size: 3.0.h,                             
                      ),
                    )
                  ],
                ),

                Stack(
                  children: [
                    _isPressed3 ?
                    Container(
                      padding: EdgeInsets.only(right: 0.2.w),
                        width: 13.0.w,
                        height: 13.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue, 
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.2.h ),
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 24.0.sp,
                                color: Colors.white
                              )
                            ),
                          ),
                        ),
                      ):
                      Container(),
                    IconButton(
                      padding: EdgeInsets.only(top: 2.4.h),
                      onPressed: (){
                        setState(() {
                          _isPressed3 = !_isPressed3;
                          _isPressed2 = false;
                          _isPressed1 = false;
                          _isPressed4 = false;
                          _isPressed5 = false;
                        });
                      },
                      
                      icon: _isPressed3
                      ?                      
                      Icon(
                        Icons.add_location_outlined,
                        color: Colors.white,
                        size: 3.0.h,
                      )
                      :
                      Icon(
                        Icons.add_location_outlined,
                        color: Color.fromRGBO(153, 163, 196, 1),
                        size: 3.0.h,                             
                      ),
                    )
                  ],
                ),

                Stack(
                  children: [
                    _isPressed4 ?
                    Container(
                        width: 13.0.w,
                        height: 13.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(71, 148, 255, 1),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.2.h ),
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 24.0.sp,
                                color: Colors.white
                              )
                            ),
                          ),
                        ),
                      ):
                      Container(),
                    IconButton(
                      padding: EdgeInsets.only(top: 2.4.h),
                      onPressed: (){
                        setState(() {
                          _isPressed4 = !_isPressed4;
                          _isPressed2 = false;
                          _isPressed3 = false;
                          _isPressed1 = false;
                          _isPressed5 = false;
                        });
                      },
                      
                      icon: _isPressed4
                      ?                      
                      Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                        size: 3.0.h,
                      )
                      :
                      Icon(
                        Icons.mail_outline,
                        color: Color.fromRGBO(153, 163, 196, 1),
                        size: 3.0.h,                             
                      ),
                    )
                  ],
                ),

                Stack(
                  children: [
                    _isPressed5 ?
                    Container(
                      padding: EdgeInsets.only(left: 0.1.w),
                        width: 13.0.w,
                        height: 13.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(71, 148, 255, 1),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.2.h ),
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 24.0.sp,
                                color: Colors.white
                              )
                            ),
                          ),
                        ),
                      ):
                      Container(),
                    IconButton(
                      padding: EdgeInsets.only(top: 2.4.h),
                      onPressed: (){
                        setState(() {
                          _isPressed5 = !_isPressed5;
                          _isPressed2 = false;
                          _isPressed3 = false;
                          _isPressed4 = false;
                          _isPressed1 = false;
                        });
                      },
                      
                      icon: _isPressed5
                      ?                      
                      Icon(
                        Icons.perm_identity,
                        color: Colors.white,
                        size: 3.0.h,
                      )
                      :
                      Icon(
                        Icons.perm_identity,
                        color: Color.fromRGBO(153, 163, 196, 1),
                        size: 3.0.h,                             
                      ),
                    )
                  ],
                ),
            */