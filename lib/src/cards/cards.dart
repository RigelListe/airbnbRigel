import 'package:airbnb/size_helpers.dart';
import 'package:flutter/material.dart';

class CardPropieties extends StatelessWidget {
  const CardPropieties({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card1 = Container(
      height: 400.0,
      //width: 414.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/onBoard/imagePage1.png'),
          fit: BoxFit.fill
        ),
      )
    );
    return Container(
      width: displayWidth(context) * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: card1,
      )
    );
  }
}

class CardPropieties2 extends StatelessWidget {
  const CardPropieties2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final card2 = Container(
      height: 400.0,
      //width: 414.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/onBoard/imagePage2.png'),
          fit: BoxFit.fill,
        ),
      )
    );
    return Container(
        width: displayWidth(context) * 0.9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
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
      height: 400.0,
      //width: 414.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/onBoard/imagePage1.png'),
          fit: BoxFit.fill,
        ),
      )
    );
    return Container(
      width: displayWidth(context) * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: card3,
      )
    );
  }
}