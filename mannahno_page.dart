// TODO Implement this library.
import 'package:flutter/material.dart';
class mannahnopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('من نحن'),
      ),

      body: Container(
        width: 530,
        height: 900,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            '                                                                              نــحــن طــالـبــات فــي الــجامـعــة  الــهـــــاشــمـــيــة قـــررنـــا انــشـــاء تطبيـق يمكـن المستـخـدم مـن اخــتيــار الـمكـــونـات الــتي تتـوفـر لــديـه ثــــــم يــقــوم الـــتطــبـيـــــق بــاقــتـراح اطبــاق باســتــخــــدام تــلـك المـكـــونـــات مـع طريـقــة عـمـــلــها , ويــقـــوم الـــتطـــبيــــق ايــضـا بــحفــظ الاطباق الاخيـرة.\n \nيـــحـتــوي التطــبــيـق ايـــضـا على الــعـديــد مــن الـميـزات الاخـــرى مــثــــل الاطـبـــاق الـمــفضـــلــــة وسلـــة شـــراء الاسـبـوع. ',
              style: TextStyle(
                color: Color(0xFF505050),
                fontSize: 22.0,
                fontFamily: 'Tajawal',

                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.right,
            ),
            // يمكنك إضافة المزيد من التفاصيل هنا
          ],
        ),
      ),
    );
  }
}

