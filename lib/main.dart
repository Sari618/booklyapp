import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:google_fonts/google_fonts.dart'; 

=======
import 'package:google_fonts/google_fonts.dart';
>>>>>>> 7c67bee81a6ebee800b2b71e8fd9277caec84559

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  kPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      
    );
    
  }
}
