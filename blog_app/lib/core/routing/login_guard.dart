import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:thesis/core/routing/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final isLoggedIn = await checkIsLoggedIn();
    if (isLoggedIn) {
      resolver.next(true);
    } else {
      //router.push(const AuthRoute());
    }
  }

  Future<bool> checkIsLoggedIn() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return false;
    } else {
      return true;
    }
  }
}
