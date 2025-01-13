import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/splash/wigets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

    @override
  void initState() {
    super.initState();
    initslidingAnimation();
    navigtionToHome();
   }



   
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo,),
      const SizedBox(height: 4)
      ,
    SlidingText(slidingAnimation: slidingAnimation),

      ],
    );
    
  } void initslidingAnimation() {
      animationController = AnimationController(vsync: this, duration:const Duration(seconds: 1));
      slidingAnimation = Tween<Offset>(begin:Offset(0,8) ,end:Offset.zero).animate(animationController);
      animationController.forward();
    }
    void navigtionToHome() {
       Future.delayed(const Duration(seconds: 2),(){
        // Get.to(()=>HomePage(),transition: Transition.fadeIn, duration:kTranstionDuration );
        GoRouter.of(context).go(AppRouter.kHomePage );
      }
      );
} 
  
}

