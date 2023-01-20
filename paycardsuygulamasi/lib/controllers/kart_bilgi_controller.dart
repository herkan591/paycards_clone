
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KartBilgiController extends GetxController{

  var _isimController=TextEditingController().obs;
  var _kartNumarasiController=TextEditingController().obs;
  var _vadeController=TextEditingController().obs;


  get isimController => _isimController.value;
  get kartNumarasiController => _kartNumarasiController.value;
  get vadeController => _vadeController.value;

  KartBilgiController(){

    baslangic();

  }


  String getIsim(){
    return isimController.text;
  }
  String getKartNumarasi(){
    return kartNumarasiController.text;
  }
  String getVade(){
    return vadeController.text;
  }


  void setIsim(String value){
    isimController.text=value;
  }

  void setKartNumarasi(String value){
    kartNumarasiController.text=value;
  }
  void setVade(String value){
    vadeController.text=value;
  }


  void baslangic(){

    isimController.text="";
    kartNumarasiController.text="";
    vadeController.text="";


  }






}