import 'package:flutter/material.dart';
import '../notifier/theme.dart';
class GlobalParams{
  static List<Map<String,dynamic>>menus=[
    {"title":"Accueil","icon":Icon(Icons.home,color:Colors.pink,),"route":"/home"},
    {"title":"Météo","icon":Icon(Icons.sunny_snowing,color:Colors.pink,),"route":"/meteo"},
    {"title":"Gallerie","icon":Icon(Icons.photo,color:Colors.pink,),"route":"/gallerie"},
    {"title":"Pays","icon":Icon(Icons.location_city,color:Colors.pink,),"route":"/pays"},
    {"title":"Contact","icon":Icon(Icons.contact_page,color:Colors.pink,),"route":"/contact"},
    {"title":"Paramétres","icon":Icon(Icons.settings,color:Colors.pink,),"route":"/parametres"},
    {"title":"Déconnexion","icon":Icon(Icons.logout,color:Colors.pink,),"route":"/authentification"},

  ];
  static List<Map<String,dynamic>>accueil=[
    {"image":AssetImage('images/meteo.png',),"route":"/meteo"},
    {"image":AssetImage('images/gallerie.png',),"route":"/gallerie"},
    {"image":AssetImage('images/pays.png',),"route":"/pays"},
    {"image":AssetImage('images/contact.png',),"route":"/contact"},
    {"image":AssetImage('images/parametres.png',),"route":"/parametres"},
    {"image":AssetImage('images/deconnexion.png',),"route":"/authentification"},

  ];
  static MonTheme themeActuel=MonTheme();
}