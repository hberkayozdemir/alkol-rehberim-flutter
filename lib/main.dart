import 'package:alkol_rehberi/alkol_detay.dart';
import 'package:alkol_rehberi/alkol_liste.dart';
import 'package:alkol_rehberi/models/alkol.dart';
// import 'package:alkol_rehberi/testlib.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        "/": (context) => AlkolListesi(),
        "/alkolListesi": (context) => AlkolListesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");
        if (pathElemanlari[1] == 'alkolDetay') {
          return MaterialPageRoute(
              builder: (context) => Alkol_Detay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      initialRoute: "/alkolListesi",
      debugShowCheckedModeBanner: false,
      title: "Alkol Rehberi",
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.lime),
      // !home:,
      // !koymucam cunki routes kullanıcaz
    );
  }
}
