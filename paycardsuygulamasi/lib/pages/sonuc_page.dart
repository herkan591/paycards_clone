import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycardsuygulamasi/controllers/kart_bilgi_controller.dart';

class SonucPage extends StatefulWidget {
  @override
  _SonucPageState createState() => _SonucPageState();
}

class _SonucPageState extends State<SonucPage> {
  @override
  Widget build(BuildContext context) {

    KartBilgiController kartBilgiController=Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Row(

          children: [


            MaterialButton(

              child: Row(
                children: [


                  Icon(Icons.arrow_back_ios,color: Colors.white,),
                  Text('back'.tr,style: TextStyle(color: Colors.white,fontSize: 20),),

                ],
              ),
              onPressed: ()=>Get.back(),

            ),
            Expanded(
                child: SizedBox(width: 1,)
            ),



          ],

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex:35,
                    child: Text(
                      'name'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:65,
                    child: Obx(
                      ()=> Text(
                        kartBilgiController.getIsim(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    flex:35,
                    child: Text(
                      'card number'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:65,
                    child: Obx(
                          ()=> Text(
                        kartBilgiController.getKartNumarasi(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    flex:35,
                    child: Text(
                      'expire'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:65,
                    child: Obx(
                          ()=> Text(
                        kartBilgiController.getVade(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo,
                        ),
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
