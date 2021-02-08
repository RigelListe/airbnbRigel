import 'package:airbnb/size_helpers.dart';
import 'package:airbnb/src/cards/cards.dart';
import 'package:airbnb/src/views/singUpView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(71, 148, 255, 1),
      body: PageView(
        children: [
          Pagina(),
          Pagina2(),


        ],
      )
    );
  }
}

class Pagina extends StatelessWidget {
  const Pagina({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return  Center(
          child: SvgPicture.asset(
            'assets/images/airbnbLogo.svg',
           height: 18.0.h,
           width: 12.0.w,
           )
        );
  }
}

class Pagina2 extends StatefulWidget {

  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  int _currentIndex = 0;

  List cardList = [CardPropieties(), CardPropieties2(), CardPropieties3() ];

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
      backgroundColor: Color.fromRGBO(240, 241, 241, 1),
      body: Column(
        children: [
          Center(
            child: 
            CarouselSlider(
              options: CarouselOptions(
                height: 61.0.h,
                //aspectRatio: 1.0,
                autoPlay: false,
                viewportFraction: 1,
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

                    width: displayWidth(context) * 1,
                    height: displayWidth(context) * 0.9, //Con esto manejamos el ratio de la imagen

                    decoration: BoxDecoration(
                      
                      color: Color.fromRGBO(240, 242, 243, 1),
                      //borderRadius: BorderRadius.circular(30),
                    ),
                    //height: MediaQuery.of(context).size.height * 0.9,
                  // width: MediaQuery.of(context).size.width * 0.45,
                    child: ClipRRect(
                      //borderRadius: BorderRadius.circular(20),
                      child: FittedBox(child: card, fit: BoxFit.cover),
                    )
                  );
                });
              }).toList(),
            ),   
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(left: 2.0.w),
              child: Text(
                'Let\'s find Peace',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 20.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(left: 2.0.w),
              child: Text(
                'with Comfort.',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 20.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),
          ),

          Container(
             // padding: EdgeInsets.only(top: 246.0),
              
              child: Container(
                padding: EdgeInsets.only(right: 76.0.w),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {

                    return _currentIndex == index ? 
                     
                      Container(
                        width: 4.0.w,
                        height: 1.0.h,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(71, 148, 255, 1),
                              borderRadius: BorderRadius.circular(30),
                          ),
                     ) :

                      Container(

                        width: 2.0.w,
                        height: 2.0.h,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape:  BoxShape.circle,
                            color: Color.fromRGBO(71, 148, 255, 0.3),
                         ),
                      );
                  }),
                ),
              ),
            ),

            SizedBox(
              height: 8.0.h
            ),

            Center(
              child: 
              Container(  
                height: 7.0.h,
                width: 90.0.w,            
                decoration: BoxDecoration(
                  color: Color.fromRGBO(71, 148, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Center(
                    child: Text(
                     'Get Started',
                     style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize: 18.0,
                       color: Colors.white
                    )
                    )
                  ),
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'Have an Account?',
                  style: TextStyle(
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w400
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingUp()),
                        );
                  },
                  child: Text(
                    'Sing in',
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(33, 45, 82, 1)
                    )
                  ),
                )
              ],
            )
        ]
      )
    );
  }
}



/*

Container(
                height: 528.0,
                width: 414.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(photos[photoIndex]),
                    fit: BoxFit.cover,
                  ),
                )
            ),

*/

