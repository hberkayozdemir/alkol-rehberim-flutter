import 'package:alkol_rehberi/models/alkol.dart';
import 'package:alkol_rehberi/utils/strings.dart';

import 'package:flutter/material.dart';

class AlkolListesi extends StatelessWidget {
  @override
  static List<Alkol> tumAlkoller;

  Widget build(BuildContext context) {
    // TODO: implement build
    tumAlkoller = veriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text(" Alkol Rehberi"),
      ),
      body: AlkolListem(),
    );
  }

  Widget AlkolListem() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirAlkol(context, index);
      },
      itemCount: tumAlkoller.length,
    );
  }

  Widget tekSatirAlkol(BuildContext context, int index) {
    Alkol currentAlkolAdded = tumAlkoller[index];

    return Padding(
      padding: EdgeInsets.all(9.0),
      child: Card(
        elevation: 10,
        color: Colors.grey[900],
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/alkolDetay/$index");
          },
          leading: Image.asset("images/" + currentAlkolAdded.resimS,
              width: 64, height: 64),
          title: Text(
            currentAlkolAdded.alkolAdi,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            currentAlkolAdded.alkolOrani,
            style: TextStyle(
                fontSize: 22,
                color: Colors.orange,
                fontWeight: FontWeight.w900),
          ),
          trailing: Icon(
            Icons.wine_bar,
            color: Colors.red.shade300,
          ),
        ),
      ),
    );
  }
}

List<Alkol> veriKaynaginiHazirla() {
  List<Alkol> alkoller = [];

  for (int i = 0; i < 12; i++) {
    // String sResim =Strings.ALKOL_ADLARI[i]=>sResim.trim();
    String kucukResim = Strings.ALKOL_ADLARI[i].toLowerCase() + "_" + "s.jpg";
    String buyukResim = Strings.ALKOL_ADLARI[i].toLowerCase() + "_" + "b.jpg";
    // debugPrint("######################## kucuk \n");
    // debugPrint(kucukResim);
    // debugPrint("######################## buyuk \n");
    // debugPrint(buyukResim);
    // debugPrint(buyukResim);
    Alkol eklenenAlkol = Alkol(
        Strings.ALKOL_ADLARI[i],
        Strings.ALKOL_ORANLARI[i],
        Strings.ALKOL_GENEL_OZELLIKLERI[i],
        kucukResim,
        buyukResim);

    alkoller.add(eklenenAlkol);
  }
  return alkoller;
}
