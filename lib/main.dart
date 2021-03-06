import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printing_app/routes.dart';
import 'package:provider/provider.dart';
import './screens/splash/splash_screen.dart';
import './theme.dart';
import 'provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: "Mohamed_ramadan@example.com", password: "SuperSecretPass ");
    print("done");
  }
  catch(e){
    print(e);    
  }

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => myProvider()),
        ],
          child: MyApp()
      ),
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
