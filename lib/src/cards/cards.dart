import 'package:airbnb/src/views/detail.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../size_helpers.dart';

class CardPropieties extends StatelessWidget {
  const CardPropieties({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card1 = Container(
      width: displayWidth(context) * 1,
      height: displayWidth(context) * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i.pinimg.com/originals/d5/e2/6d/d5e26d02b19d4250a314bf807f8953b5.jpg'),
          fit: BoxFit.fill,
        ),
      )
    );
    return Container(
      child: ClipPath(
        clipper: BottomClipper(),
        child: card1,
      )
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height -170);

    var firstControlPoint = Offset(size.width / 3, size.height);
    var firstEndPoint = Offset(size.width / 1, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
/*
    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height -65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
*/
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CardPropieties2 extends StatelessWidget {
  const CardPropieties2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card2 = Container(
      width: displayWidth(context) * 1,
      height: displayWidth(context) * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://media.architecturaldigest.com/photos/58066f08cdff3c07101deedc/master/w_3200,h_2707,c_limit/modern-living-rooms-20.jpg'),
          fit: BoxFit.fill,
        ),
      )
    );
    return Container(
      child: ClipPath(
        clipper: BottomClipper(),
        child: card2,
      )
    );
  }
}

class CardPropieties3 extends StatelessWidget {
  const CardPropieties3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card3 = Container(
      width: displayWidth(context) * 1,
      height: displayWidth(context) * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.squarespace-cdn.com/content/v1/55bebb51e4b036c52ebe8c45/1479468491097-GMHXYV1POC6YY6PIHB0V/ke17ZwdGBToddI8pDm48kFx5w6uhjzVNvXd0Z5MMcq9Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwhWvegMqtx7YaxMvbgHTKNWrrhMtYq5ZSmwUn4SJTgEedgLJz0zTIQzoD_qWDa4to/gold+themed+living+room'),
          fit: BoxFit.fill,
        ),
      )
    );
    return Container(
      child: ClipPath(
        clipper: BottomClipper(),
        child: card3,
      )
    );
  }
}
                                //HomeCards


class CardHome1 extends StatefulWidget {
  const CardHome1({Key key}) : super(key: key);

  @override
  _CardHome1State createState() => _CardHome1State();
}

class _CardHome1State extends State<CardHome1> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {

    final cardHome1 = Container(
      width: displayWidth(context) * 1,
      height: displayWidth(context) * 1,
      
      child: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Detail()),
                        );
                },
                 child: Container (
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), 
                    
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 100.0.w,
                      height: 28.8.h,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/edc090120peart-005-1595519364.jpg',

                      ), 
                    ),
                  ),
                ),
              ),

              SizedBox(height: 1.8.h),

              Padding(
                padding: EdgeInsets.only(right: 12.0.w),
                child: Text(
                  'Royal Malewane',
                  style: TextStyle(
                    fontFamily: 'PlayFair',
                    fontSize: 15.5.sp,
                    color: Color.fromRGBO(33, 45, 82, 1)
                  ),            
                ),
              ),

              SizedBox(height: 1.8.h),

              Padding(
                padding: EdgeInsets.only(left: 1.0.w),
                child: Text(
                  'Do you searching luxury hotels?',
                  style: TextStyle(
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(153, 163, 196, 1),
                  ),            
                ),
              ),

              SizedBox(height: 0.4.h),

              Padding(
                padding: EdgeInsets.only(right: 18.0.w),
                child: Text(
                  'This is only for you !',
                  style: TextStyle(      
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(153, 163, 196, 1),
                  ),            
                ),
              ),

              SizedBox(height: 1.2.h),

              Padding(
                padding: EdgeInsets.only(right: 40.0.w),
                child: Text(
                  'From',
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(33, 45, 82, 1)
                  ),            
                ),
              ),   

              SizedBox(height: 1.2.h),

              
                  Padding(
                    padding: EdgeInsets.only(right: 38.0.w),
                    child: Text(
                      '\$285',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(33, 45, 82, 1)
                      ),            
                    ),
                  ), 

            ]
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0.w),
            child: IconButton(
              padding: EdgeInsets.only(top: 45.0.h),
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
          ),
        ],
      )
    );
    return Container(
      width: 30.0.h,
      child: Container(
        width: 25.0.h,
        color: Color.fromRGBO(255, 255, 245, 0.5),
        //color: Colors.red,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: cardHome1,
        )
      ),
    );
  }
}


class CardHome2 extends StatefulWidget {
  const CardHome2({Key key}) : super(key: key);

  @override
  _CardHome2State createState() => _CardHome2State();
}

class _CardHome2State extends State<CardHome2> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {

    final cardHome2 = Container(
      width: displayWidth(context) * 1,
      height: displayWidth(context) * 1,
      
      child: Stack(
        children: [
        Column(
        children: [
          GestureDetector(
            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detail()),
                  );
                },
             child: Container (
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), 
                
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  width: 100.0.w,
                  height: 28.8.h,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://i.pinimg.com/originals/15/dc/8e/15dc8e13aa4805694c8768e0e0bab3de.jpg',

                  ), 
                ),
              ),
            ),
          ),

          SizedBox(height: 1.8.h),

          Padding(
            padding: EdgeInsets.only(right: 16.5.w),
            child: Text(
              'Houlin Corner',
              style: TextStyle(
                fontFamily: 'PlayFair',
                fontSize: 15.5.sp,
                color: Color.fromRGBO(33, 45, 82, 1)
              ),            
            ),
          ),

              SizedBox(height: 1.8.h),

              Padding(
                padding: EdgeInsets.only(left: 1.0.w),
                child: Text(
                  'Do you searching luxury hotels?',
                  style: TextStyle(
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(153, 163, 196, 1),
                  ),            
                ),
              ),

              SizedBox(height: 0.4.h),

              Padding(
                padding: EdgeInsets.only(right: 18.0.w),
                child: Text(
                  'This is only for you !',
                  style: TextStyle(      
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(153, 163, 196, 1),
                  ),            
                ),
              ),

              SizedBox(height: 1.2.h),

              Padding(
                padding: EdgeInsets.only(right: 40.0.w),
                child: Text(
                  'From',
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(33, 45, 82, 1)
                  ),            
                ),
              ),   

              SizedBox(height: 1.2.h),

              
                  Padding(
                    padding: EdgeInsets.only(right: 38.0.w),
                    child: Text(
                      '\$300',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(33, 45, 82, 1)
                      ),            
                    ),
                  ), 

            ]
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0.w),
            child: IconButton(
              padding: EdgeInsets.only(top: 45.0.h),
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
          ),
        ],
      )
    );
    return Container(
      width: 30.0.h,
      child: Container(
        width: 25.0.h,
        color: Color.fromRGBO(255, 255, 245, 0.5),
        //color: Colors.red,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: cardHome2,
        )
      ),
    );
  }
}


class CardHome3 extends StatefulWidget {
  const CardHome3({Key key}) : super(key: key);

  @override
  _CardHome3State createState() => _CardHome3State();
}

class _CardHome3State extends State<CardHome3> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {

    final cardHome3 = Container(
      width: displayWidth(context) * 1,
      height: displayWidth(context) * 1,
      
      child: Stack(
        children: [
          Column(
        children: [
          GestureDetector(
            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detail()),
                  );
                },
              child: Container (
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), 
                
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  width: 100.0.w,
                  height: 28.8.h,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F655d70b0-e798-11ea-b9f8-ab500af5d066.jpg?crop=2667%2C1500%2C0%2C0',

                  ), 
                ),
              ),
            ),
          ),

          SizedBox(height: 1.8.h),

          Padding(
            padding: EdgeInsets.only(right: 19.0.w),
            child: Text(
              'Sunset Beach',
              style: TextStyle(
                fontFamily: 'PlayFair',
                fontSize: 15.5.sp,
                color: Color.fromRGBO(33, 45, 82, 1)
              ),            
            ),
          ),


              SizedBox(height: 1.8.h),

              Padding(
                padding: EdgeInsets.only(left: 1.0.w),
                child: Text(
                  'Do you searching luxury hotels?',
                  style: TextStyle(
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(153, 163, 196, 1),
                  ),            
                ),
              ),

              SizedBox(height: 0.4.h),

              Padding(
                padding: EdgeInsets.only(right: 18.0.w),
                child: Text(
                  'This is only for you !',
                  style: TextStyle(      
                    fontSize: 11.0.sp,
                    color: Color.fromRGBO(153, 163, 196, 1),
                  ),            
                ),
              ),

              SizedBox(height: 1.2.h),

              Padding(
                padding: EdgeInsets.only(right: 40.0.w),
                child: Text(
                  'From',
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(33, 45, 82, 1)
                  ),            
                ),
              ),   

              SizedBox(height: 1.2.h),

              
                  Padding(
                    padding: EdgeInsets.only(right: 38.0.w),
                    child: Text(
                      '\$250',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(33, 45, 82, 1)
                      ),            
                    ),
                  ), 

            ]
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0.w),
            child: IconButton(
              padding: EdgeInsets.only(top: 45.0.h),
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
          ),
        ],
      )
    );
    return Container(
      width: 30.0.h,
      child: Container(
        width: 25.0.h,
        color: Color.fromRGBO(255, 255, 245, 0.5),
        //color: Colors.red,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: cardHome3,
        )
      ),
    );
  }
}





