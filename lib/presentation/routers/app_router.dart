import 'package:flutter/material.dart';

import '../screens/Register_screen.dart';
import '../screens/Splash_screen.dart';
import '../screens/login_screen.dart';

class AppRouter{


 static  Route? onGenerate(RouteSettings settings){

   switch(settings.name){

     case '/':
       return MaterialPageRoute(builder: (_)=> const SplashScreen() );
     case 'login':
       return MaterialPageRoute(builder: (_)=> const LoginScreen() );
     case 'register':
       return MaterialPageRoute(builder: (_)=> const RegisterScreen() );
   }

   return null ;
  }

}