//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/global.params.dart';
import '../menu/drawer.widget.dart';

class HomePage extends StatelessWidget{
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context){
   // final user =FirebaseAuth.instance.currentUser;
    return Scaffold(
      drawer: MyDrawer(),
      appBar:AppBar(title: Center(child: Text('Page Home ',style:TextStyle(fontFamily: 'against',fontWeight: FontWeight.bold)),),
      ),
        //appBar: AppBar(title: Text('Home ')),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
             // child: Text("Utilisateur:${user?.email})",style: TextStyle(fontSize: 22),),
            ),
            Center(
              child:Wrap(
                children: [
                  ...(GlobalParams.accueil as List).map((item){
                    return InkWell(
                      child:Ink.image(
                        height:180,
                        width:180,
                        image: item['image'],
                      ),
                      onTap:(){
                        if('${item["route"]}' != "/authentification")
                          Navigator.pushNamed(context, "${item['route']}");
                        else
                          Deconnexion(context);
                      },
                    );
                  })
                ],
              )

             /*child:Padding(padding:EdgeInsets.all(16.0),
             child: Column(mainAxisSize: MainAxisSize.min,children:<Widget>[
               Text("Hello" ,style: TextStyle(fontFamily:'against',fontSize:50,color:Colors.black)),
              ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
              minimumSize: const Size.fromRadius(35)), onPressed: (){
                Deconnexion(context);
                },
                  child: Text('Deconnexion',style: TextStyle(fontSize: 22,fontFamily: 'against'))),
             ]),),*/),
          ],
        ),);

  }
  Future<void> Deconnexion(context) async{
    //prefs = await SharedPreferences.getInstance();
    //prefs.setBool("connecte",false);
    //FirebaseAuth.instance.signOut();
    Navigator.of(context).pushNamedAndRemoveUntil('/authentification', (Route<dynamic> route) => false);
  }
}
