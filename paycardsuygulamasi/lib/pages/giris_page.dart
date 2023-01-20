import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_paycards/flutter_paycards.dart';
import 'package:get/get.dart';
import 'package:paycardsuygulamasi/controllers/kart_bilgi_controller.dart';

import 'kart_bilgi_page.dart';

class GirisPage extends StatefulWidget {
  @override
  _GirisPageState createState() => _GirisPageState();
}

class _GirisPageState extends State<GirisPage> {

  KartBilgiController kartBilgiController=Get.put(new KartBilgiController());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  Future<void> scanCard() async {

    kartBilgiController.baslangic();


    dynamic cardScanResult;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      cardScanResult = await FlutterPaycards.startRecognizer(cancelLabel: 'Cancel');
      debugPrint("cardScanResult $cardScanResult");
    } on PlatformException catch(e) {

      print(e.code);
      debugPrint("PlatformException");

      Get.to(()=>KartBilgiPage());

    }

    if(cardScanResult!=null){

      if(cardScanResult['cardHolderName']!=null)kartBilgiController.setIsim(cardScanResult['cardHolderName'].toString());
      if(cardScanResult['cardNumber']!=null)kartBilgiController.setKartNumarasi(cardScanResult['cardNumber'].toString());

      if(cardScanResult['expiryMonth']!=null && cardScanResult['expiryYear']!=null)kartBilgiController.setVade(cardScanResult['expiryMonth'].toString()+"/"+cardScanResult['expiryYear'].toString());
      else if(cardScanResult['expiryMonth']==null && cardScanResult['expiryYear']!=null)kartBilgiController.setVade("/"+cardScanResult['expiryYear'].toString());
      else if(cardScanResult['expiryMonth']!=null && cardScanResult['expiryYear']!=null)kartBilgiController.setVade(cardScanResult['expiryYear'].toString()+"/");

      Get.to(()=>KartBilgiPage());


    }













  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Row(

          children: [

            Expanded(
              child: SizedBox(width: 1,)
            ),

            MaterialButton(

              child: Row(
                children: [
                  Text('next'.tr,style: TextStyle(color: Colors.white,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ],
              ),
                onPressed: ()=>scanCard()

            ),



          ],

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/paycards_phone.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 15,),
              Center(
                  child: Text(
                    'paycards'.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'paycards info'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
