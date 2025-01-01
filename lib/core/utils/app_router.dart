import 'package:bookly_app/features/home/persentaion/views/book_details_page.dart';
import 'package:bookly_app/features/home/persentaion/views/home_page.dart';
import 'package:bookly_app/features/splash/presentation/views/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomePage = "/homePage";
   static const kBookDetailsView = "/bookDetailsView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomePage, builder: (context, state) => const HomePage()),
         GoRoute(path: kBookDetailsView, builder: (context, state) => const BookDetailsView()),
    ],
  );
}
