import 'package:flutter/material.dart';
import 'food_types.dart';
class newuserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة مستخدم جديد'),
      ),
      body: Container(

        width: 360,
        height: 800,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: -85,
              top: -138,
              child: Container(
                width: 530,
                height: 1155,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            Positioned(
              left: -14,
              top: -235,
              child: Container(
                width: 402,
                height: 1111,
                child: Stack(
                  children: [
                    Positioned(
                      left: 286,
                      top: 303,
                      child: Container(
                        width: 88,
                        height: 172,
                        decoration: BoxDecoration(color: Color(0xFF156260)),
                      ),
                    ),
                    Positioned(
                      left: 14,
                      top: 0,
                      child: Container(
                        width: 388,
                        height: 388,
                        decoration: ShapeDecoration(
                          color: Color(0xFF156260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(111),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 388,
                      child: Container(
                        width: 388,
                        height: 723,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(111),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 99,
                      top: 290,
                      child: Text(
                        'Invisible Chef',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 53,
                      top: 470,
                      child: Container(
                        width: 281,
                        height: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'الاســـم الاول',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 53,
                      top: 544,
                      child: Container(
                        width: 281,
                        height: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'اســـم الــعائـلـة',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 53,
                      top: 618,
                      child: Container(
                        width: 281,
                        height: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'الــبريـد الالـكـتـروني',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 53,
                      top: 694,
                      child: Container(
                        width: 281,
                        height: 60,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'كــلـمـة الـــمــرور',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 53,
                      top: 762,
                      child: Container(
                        width: 281,
                        height: 60,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'تــــاكـيــد كــلـمة المــرور',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 65,
              top: 170,
              child: Text(
                'مــستـــخـدم جـــديــد',
                style: TextStyle(
                  color: Color(0xFF156260),
                  fontSize: 29,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 110,
              top:600,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>foodtypes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF156260), // ل الخلفية
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // شكل الحواف
                  ),
                ),
                child: Text(
                  'تــسـجــيــل',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}


