import 'package:bookly_app/core/utils/styles.dart' show Styles;
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor,  this.borderRadius, required this.text,  this.fontsize});
  final Color backgroundColor;
final Color textColor;
 final String text;
final BorderRadius? borderRadius;
final double? fontsize;
  
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 48,
      child: TextButton(
        onPressed: (){},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius ??  BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.w900,fontSize: fontsize),),
      
      ),
    );
  }
}