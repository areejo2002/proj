import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'newpass.dart';
import 'favourite.dart';
import 'second_page.dart';

class profile extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<profile> {
  File? _image;
  String _username = '';

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('تم رفع الصورة بنجاح')),
        );
      } else {
        print('لم يتم اختيار صورة.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('الصفحة الشخصية'),
    ),
    body: Stack(
    children: [
    Container(
    width: 530,
    height: 900,
    decoration: BoxDecoration(
    color: Colors.white,
    image: DecorationImage(
    image: AssetImage('assets/screen.png'),
    fit: BoxFit.cover,
    ),
    ),
    ),
    Positioned(
    left: 100,
    top: 20,
    child: Text(
    'Invisible Chef',
    style: TextStyle(
    color: Colors.white,
    fontSize: 33,
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w400,
    height: 0,
    ),
    ),
    ),
    Positioned(
    left: 120,
    top: 160,
    child: GestureDetector(
    onTap: _getImageFromGallery,
    child: Stack(
    alignment: Alignment.center,
    children: [
    CircleAvatar(
    radius: 70,
    backgroundImage: _image != null ? FileImage(_image!) : null,
    backgroundColor: Colors.grey,
    child: _image == null
    ? Icon(
    Icons.person,
    size: 90,
    color: Colors.white,
    )
        : null,
    ),
    Positioned(
    left: 110,
    top: 100,
    child: Icon(
    Icons.add_circle,
    color: Colors.indigo,
    size: 24,
    ),
    ),
    ],
    ),
    ),
    ),
    Positioned(
    left: 140,
    top: 290,
    child: Container(
    width: 200,
    child: TextField(
    onChanged: (value) {
    setState(() {
    _username = value;
    });
    },
    textAlign: TextAlign.start,
    style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    ),
    decoration: InputDecoration(
    labelText: 'اسم المستخدم',
    labelStyle: TextStyle(
    color: Colors.grey,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    ),
    border: InputBorder.none,
    ),
    ),
    ),
    ),
    Positioned(
    left: 55,
    top: 370,
    child: Column(
    children: [
    Container(
    width: 250,
    height: 70,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => favourite(),
    ),
    );
    },
    icon: Icon(Icons.favorite),
    color: Colors.red,
    ),
    Text(
    'المفضلة',
    style: TextStyle(
    color: Color(0xFF156260),
    fontSize: 18,
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w600,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 10),
    Container(
    width: 250,
    height: 70,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => secondPage(),
    ),
    );
    },
    icon: Icon(Icons.logout),
    color: Colors.grey,
    ),
    SizedBox(width: 5),
    Text(
    'تسجيل الخروج',
    style: TextStyle(
    color: Color(0xFF156260),
    fontSize: 18,
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w600,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 20),
    Container(
    width: 250,
      height: 120,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => secondPage(),
                ),
              );
            },
            icon: Icon(Icons.settings_suggest_outlined),
            color: Colors.grey,
          ),
          SizedBox(width: 5),
          Expanded(
            child: Stack(
              children: [
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'استفساراتكم واقتراحاتكم',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
                Positioned(
                  right: 90
                  ,
                  top: 40,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {
                      // الإجراء عند النقر على الزر لتسليم المقترح
                    },
                    icon: Icon(Icons.send),
                    color: Color(0xFF156260),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    ],
    ),
    ),
      Positioned(
        left: 100,
        top: 110,
        child: Text(
          'حساب المستخدم',
          style: TextStyle(
            color: Color(0xFF156260),
            fontSize: 27,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    ],
    ),
    );
  }
}
