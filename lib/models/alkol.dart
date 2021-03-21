import 'package:alkol_rehberi/utils/strings.dart';

class Alkol {
  String _alkolAdi;
  String _alkolOrani;
  String _alkolDatayi;
  String _resimS;
  String _resimB;

  Alkol(this._alkolAdi, this._alkolOrani, this._alkolDatayi, this._resimS,
      this._resimB);

  String get resimB => _resimB;
  String get resimS => _resimS;
  String get alkolAdi => _alkolAdi;
  String get alkolDetayi => _alkolDatayi;
  String get alkolOrani => _alkolOrani;

  set resimB(String value) => _resimB = value;
  set resimS(String value) => _resimS = value;
  set alkolAdi(String value) => _alkolAdi = value;
  set alkolDetayi(String value) => _alkolDatayi = value;
  set alkolOrani(String value) => _alkolOrani = value;
}
