import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_UK': {
      'paycards': 'PAY.CARDS',
      'paycards info': 'Best way to recognize number, holder name and expire date from bank card offline.',
      'next': 'Next',
      'back':'Back',
      'required':'Required',
      'name':'Name',
      'card number':'Card Number',
      'expire':'Expire',
      'card details':'Cards Details',
      'card details info':'Verify and complete your card information.',
      'fill data':'Fill data.',
      'warning':'WARNING!'
    },
    'tr_TR': {
      'paycards': 'PAY.CARDS',
      'paycards info': 'Banka kartından numarayı, sahibinin adını ve son kullanma tarihini çevrimdışı tanımanın en iyi yolu.',
      'next': 'İleri',
      'back':'Geri',
      'required':'Gerekli',
      'name':'İsim',
      'card number':'Kart Numarası',
      'expire':'Vade',
      'card details':'Kart Detayları',
      'card details info':'Kart bilgilerinizi doğruların ve tamamlayın.',
      'fill data':'Verileri doldurun.',
      'warning':'UYARI!'
    }
  };
}