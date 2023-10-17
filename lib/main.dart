


//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voyage/pages/article.page.dart';
import 'package:voyage/pages/contact.page.dart';
import 'package:voyage/pages/gallerie.page.dart';
import 'package:voyage/pages/inscription.page.dart';
import 'package:voyage/pages/authentification.page.dart';
import 'package:voyage/pages/home.page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voyage/pages/meteo.page.dart';
import 'package:voyage/pages/parametres.page.dart';
import 'package:voyage/pages/pays.page.dart';
import 'config/global.params.dart';
import 'firebase_options.dart';

//void main()=> runApp(MyApp());
ThemeData theme =ThemeData.light();
Future<void> main() async{
  //WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //theme = (await _onGetMode()=="Jour") ? ThemeData.light():
//  GlobalParams.themeActuel.setMode(await _onGetMode());
//  ThemeData.dark();
  runApp (MyApp());}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final routes = {
    '/article':(context)=>ArticlesPage(),
    '/home': (context) => HomePage(),
    '/inscription': (context) => InscriptionPage(),
    '/authentification': (context) => AuthentificationPage(),
    '/meteo':(context) => MeteoPage(),
    '/gallerie':(context) => GalleriePage(),
    '/pays':(context) => PaysPage(),
    '/contact':(context) => ContactPage(),
    //'/parametres':(context) =>ParameterPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    theme: GlobalParams.themeActuel.getTheme(),

       home:ArticlesPage(),

      //StreamBuilder<User?>(
   // stream: FirebaseAuth. instance. authStateChanges (),
   // builder: (context,snapshot) {
   // if(snapshot.hasData)
     //   return HomePage();
   // else
    //    return AuthentificationPage();
    //}
   // ),
    );
  }



    /* FutureBuilder(
            future: SharedPreferences.getInstance(),
            builder:
            (BuildContext context,AsyncSnapshot<SharedPreferences> prefs){
        var x =prefs.data;
        if(prefs.hasData){
        bool coon= x ?.getBool('connecte') ?? false;
        if(coon)
        return HomePage()
        }
        return AuthentificationPage();
        }
        )*/

@override
  void initState(){
    super.initState();
    GlobalParams.themeActuel.addListener(() {
     setState(() {

     });
    });
}

}
/*Future<String> _onGetMode() async {
  final snapshot = await ref.child('mode').get();
  if (snapshot.exists)
    mode = snapshot.value.toString();
  else
    mode = "Jour";
  print(mode);
  return (mode);
}*/