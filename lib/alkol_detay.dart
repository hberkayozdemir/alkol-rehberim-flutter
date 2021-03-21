import 'package:alkol_rehberi/alkol_liste.dart';
import 'package:alkol_rehberi/models/alkol.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class Alkol_Detay extends StatelessWidget {
  int index;
  Alkol secilenAlkol;

  Alkol_Detay(this.index);
  @override
  Widget build(BuildContext context) {
    secilenAlkol = AlkolListesi.tumAlkoller[index];
    PaletteGenerator paletteGenerator;
    Future<PaletteGenerator> fpg = PaletteGenerator.fromImageProvider(
        AssetImage("images/" + secilenAlkol.resimB));

    fpg.then((value) {
      paletteGenerator = value;
      debugPrint(paletteGenerator.colors.toString());
    });
    // TODO: implement build
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.orange,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + secilenAlkol.resimB,
                fit: BoxFit.cover,
              ),
              title: Text(secilenAlkol.alkolAdi + "  Alkolün özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              // color: Colors.lime[900],
              child: SingleChildScrollView(
                child: Text(secilenAlkol.alkolDetayi,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
