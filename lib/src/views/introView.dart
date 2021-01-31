import 'package:airbnb/size_helpers.dart';
import 'package:airbnb/src/cards/cards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
           height: 148.0,
           width: 130.0,
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
                height: 528.0,
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
                    width: displayWidth(context) * 1.0,
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
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Let\'s find Peace',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 28.0,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'with Comfort.',
                style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 28.0,
                  color: Color.fromRGBO(33, 45, 82, 1)
                ),
              ),
            ),
          ),

          Container(
             // padding: EdgeInsets.only(top: 246.0),
              
              child: Container(
                padding: EdgeInsets.only(right: 288.0),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {

                    return _currentIndex == index ? 
                     
                      Container(
                        width: 18.0,
                        height: 9.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(71, 148, 255, 1),
                              borderRadius: BorderRadius.circular(30),
                          ),
                     ) :

                      Container(

                        width: 9.0,
                        height: 9.0,
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
              height: 38.0
            ),

            Center(
              child: 
              Container(  
                height: 56.0,
                width: 334.0,            
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
                    color: Color.fromRGBO(33, 45, 82, 1)
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Sing in',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
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

