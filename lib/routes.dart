import 'package:flutter/material.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/complete_profile/complete_profile_screen.dart';
import '../screens/details/components/product_description.dart';
import '../screens/details/details_screen.dart';
import '../screens/forgot_password/forgot_password_screen.dart';
import '../screens/guest/guest_login_success_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/signIn_success/signIn_success_screen.dart';
import '../screens/signUp_success/signup_success_screen.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/splash/splash_screen.dart';
import 'screens/art_screen/art.dart';
import 'screens/hero_screen/hero.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/wishlist/wishlist.dart';

final Map<String, WidgetBuilder> routes ={
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
ProductDescription.routeName: (context) => ProductDescription(),
};