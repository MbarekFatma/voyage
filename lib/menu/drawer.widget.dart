import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/global.params.dart';
class MyDrawer extends StatelessWidget {

  //const MyDrawer({Key ? key}) :super(key: key);
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.pink])),
            child: Center(child: CircleAvatar(
              backgroundImage: AssetImage("images/hijab.jpg"), radius: 80,
            ),)),
          ...(GlobalParams.menus as List).map((item){
    return ListTile(
    title: Text('${item['title']}', style: TextStyle(fontSize: 22)),
    leading: item['icon'],
    trailing: Icon(Icons.arrow_right, color: Colors.grey,),
    onTap: () async{
    if('${item['title']}'!="déconnexion"){
    Navigator.of(context).pop();
    Navigator.pushNamed(context, "${item['route']}");
    }
    else {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool("connecte",false);
    Navigator.of(context).pushNamedAndRemoveUntil('/authentification',
    (Route<dynamic>route) => false);
    }
    },
    );
    })
          /*ListTile(
            title: Text('Accueil', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.home, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: Text('Météo', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.sunny_snowing, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/meteo");
            },
          ),
          ListTile(
            title: Text('Gallerie', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.photo, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/gallerie");
            },
          ),
          ListTile(
            title: Text('Pays', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.location_city, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () { Navigator.of(context).pop();
            Navigator.pushNamed(context, "/pays");},
          ),
          ListTile(
            title: Text('Contact', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.contact_page, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () { Navigator.of(context).pop();
            Navigator.pushNamed(context, "/contact");},
          ),
          ListTile(
            title: Text('Paramétres', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.settings, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/parametres");
            },
          ),
          ListTile(
            title: Text('Deconnexion', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.logout, color: Colors.grey),
            trailing: Icon(Icons.arrow_right, color: Colors.grey),
            onTap: () async{
              prefs = await SharedPreferences.getInstance();
              prefs.setBool("connecte",false);
              Navigator.of(context).pushNamedAndRemoveUntil('/authentification',
                      (Route<dynamic>route) => false);

            },
          )*/
        ],
        ));
  }

}