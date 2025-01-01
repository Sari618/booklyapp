import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      
        IconButton(onPressed: (){
          GoRouter.of(context).push(AppRouter.kHomePage);
        },icon: Icon(Icons.close),
        ),
        IconButton(onPressed: (){
          GoRouter.of(context).push(AppRouter.kHomePage);
        },icon: Icon(Icons.shopping_cart),
        )
          
            ],
        
      
      );
    
  }
}