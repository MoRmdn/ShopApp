import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/signIn_success/signIn_success_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/signUp_success/signup_success_screen.dart';
import 'package:shop_app/screens/guest/guest_login_success_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/wishlist/wishlist.dart';
import 'screens/art_screen/art.dart';
import 'screens/hero_screen/hero.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  signInSuccessScreen.routeName: (context) => signInSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SignUpSuccessScreen.routeName: (context) => SignUpSuccessScreen(),
  GuestLoginSuccessScreen.routeName: (context) => GuestLoginSuccessScreen(),
  WishList.routeName: (context) => WishList(),
  ART.routeName: (context) => ART(),
  HERO.routeName: (context) => HERO(),
};
