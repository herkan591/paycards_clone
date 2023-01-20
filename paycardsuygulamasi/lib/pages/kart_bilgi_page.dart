import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycardsuygulamasi/controllers/kart_bilgi_controller.dart';
import 'package:paycardsuygulamasi/pages/sonuc_page.dart';

class KartBilgiPage extends StatefulWidget {


  @override
  _KartBilgiPageState createState() => _KartBilgiPageState();
}

class _KartBilgiPageState extends State<KartBilgiPage> {

  _KartBilgiPageState();





  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 16.0);



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }



  @override
  Widget build(BuildContext context) {

    KartBilgiController kartBilgiController=Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
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

            MaterialButton(

              child: Row(
                children: [

                  Text('next'.tr,style: TextStyle(color: Colors.white,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,),

                ],
              ),
              onPressed: (){

                if(kartBilgiController.getVade()=="" ||
                    kartBilgiController.getKartNumarasi()=="" || kartBilgiController.getIsim()==""){

                    Get.snackbar(
                        'warning'.tr, 'fill data'.tr,
                        backgroundColor: Colors.blueGrey,
                        colorText: Colors.white,
                        duration: Duration(seconds:2),
                    );



                }else{

                  Get.to(SonucPage());

                }

              },

            ),





          ],

        ),

      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: SingleChildScrollView(

          child: Column(


            children: [


              Row(
                children: [

                  Expanded(child: SizedBox(),),
                  Text(
                    'card details'.tr,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.indigo,
                    ),
                  ),
                  Expanded(child: SizedBox(),),

                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [


                  Expanded(
                    child: Text(
                      'card details info'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 50,),

              Container(

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex:40,
                      child: Container(


                        child: Text(
                          'name'.tr,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),


                    Expanded(
                      flex:60,
                      child:Obx(
                            ()=>  TextField(

                            decoration: InputDecoration(
                              hintText: 'required'.tr,
                              border: InputBorder.none,


                            ),

                            controller: kartBilgiController.isimController,
                            cursorColor: Colors.indigo,


                            style: TextStyle(
                              color: Colors.indigo,
                            ),

                          ),
                      ),
                      ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex:40,
                      child: Text(
                        'card number'.tr,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),



                    Expanded(
                      flex:60,
                      child:Obx(
                            ()=>  TextField(


                            decoration: InputDecoration(
                              hintText: 'required'.tr,
                              border: InputBorder.none,


                            ),
                            controller: kartBilgiController.kartNumarasiController,

                            cursorColor: Colors.indigo,


                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 15,
                                decoration: TextDecoration.none,
                            ),

                          ),
                      ),
                      ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex:40,
                      child: Text(
                        'expire'.tr,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),



                    Expanded(
                      flex: 60,
                      child:Obx(
                        ()=> TextField(

                            decoration: InputDecoration(
                              hintText: 'required'.tr,
                              border: InputBorder.none,

                            ),

                            cursorColor: Colors.indigo,
                            controller: kartBilgiController.vadeController,

                            style: TextStyle(
                              color: Colors.indigo,

                            ),

                          ),
                      ),
                      ),

                  ],
                ),
              ),





            ],
          ),



        ),

      ),
    );
  }
}
