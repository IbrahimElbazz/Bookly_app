import 'package:bookly_app/Features/home/presentation/views/home.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_veiw.dart';
import 'package:go_router/go_router.dart';

abstract class app_router {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const splash_page(),
      ),
      GoRoute(
        path: '/Home',
        builder: (context, state) => const Home_view(),
      ),
    ],
  );
}
