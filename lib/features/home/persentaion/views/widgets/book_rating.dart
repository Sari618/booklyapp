import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({super.key,  this.mainAxisAlignment = MainAxisAlignment.start});
final     MainAxisAlignment  mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [ 
      Icon(FontAwesomeIcons.solidStar,size: 14,
      color: Color(0xffFFDD4F),),
      const SizedBox(width: 6.3),

      Text("4.8", style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
      ),
      const SizedBox(width: 5),
      Opacity(opacity:0.5,child: Text('(2390)', style: Styles.textStyle14)),
        

      ],
    );
  }
}