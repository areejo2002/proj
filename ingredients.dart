import 'package:flutter/material.dart';

class ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // حالة الـ Checkbox لكل مكون
  bool isPastaSauceSelected = false;
  bool isFlourSelected = false;
  bool isPastaSelected = false;

  bool isChickenSelected = false;
  bool isGroundBeefSelected = false;
  bool isTunaSelected = false;
  bool isMilkSelected = false;

  bool isTomatoSelected = false;
  bool isEggplantSelected = false;
  bool isOliveSelected = false;
  bool isOnionSelected = false;
  bool isGarlicSelected = false;
  bool isBellPepperSelected = false;
  bool isGingerSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/down.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'اختر المكونات',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF156260),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'نشويات',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF156260),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'الطحين',
                        value: isFlourSelected,
                        onChanged: (value) {
                          setState(() {
                            isFlourSelected = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      SquareCheckbox(
                        label: 'المعكرونة',
                        value: isPastaSelected,
                        onChanged: (value) {
                          setState(() {
                            isPastaSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'بروتينات',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF156260),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'الدجاج',
                        value: isChickenSelected,
                        onChanged: (value) {
                          setState(() {
                            isChickenSelected = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      SquareCheckbox(
                        label: 'لحم مفروم',
                        value: isGroundBeefSelected,
                        onChanged: (value) {
                          setState(() {
                            isGroundBeefSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'تونة',
                        value: isTunaSelected,
                        onChanged: (value) {
                          setState(() {
                            isTunaSelected = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      SquareCheckbox(
                        label: 'حليب',
                        value: isMilkSelected,
                        onChanged: (value) {
                          setState(() {
                            isMilkSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'صوصات',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF156260),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'صوص المعكرونة',
                        value: isPastaSauceSelected,
                        onChanged: (value) {
                          setState(() {
                            isPastaSauceSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'خضار',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF156260),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'طماطم',
                        value: isTomatoSelected,
                        onChanged: (value) {
                          setState(() {
                            isTomatoSelected = value!;
                          });
                        },
                      ),
                      SizedBox(width: 30),
                      SquareCheckbox(
                        label: 'باذنجان',
                        value: isEggplantSelected,
                        onChanged: (value) {
                          setState(() {
                            isEggplantSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'زيتون',
                        value: isOliveSelected,
                        onChanged: (value) {
                          setState(() {
                            isOliveSelected = value!;
                          });
                        },
                      ),
                      SizedBox(width: 30),
                      SquareCheckbox(
                        label: 'بصل',
                        value: isOnionSelected,
                        onChanged: (value) {
                          setState(() {
                            isOnionSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'ثوم',
                        value: isGarlicSelected,
                        onChanged: (value) {
                          setState(() {
                            isGarlicSelected = value!;
                          });
                        },
                      ),
                      SizedBox(width: 30),
                      SquareCheckbox(
                        label: 'فلفل رومي',
                        value: isBellPepperSelected,
                        onChanged: (value) {
                          setState(() {
                            isBellPepperSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareCheckbox(
                        label: 'زنجبيل',
                        value: isGingerSelected,
                        onChanged: (value) {
                          setState(() {
                            isGingerSelected = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RecipePage()),
                      );
                    },
    child: Text(
    'اختيار',
    style: TextStyle(
    color: Color(0xFF156260), // تغيير لون النص هنا
    ),
    ),
    style: ElevatedButton.styleFrom(
    primary: Colors.white,
    ),
    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة الوصفة'),
      ),
      body: Center(
        child: Text('هذه هي صفحة الوصفة'),
      ),
    );
  }
}

class SquareCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?>? onChanged;

  SquareCheckbox({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged!(!value);
      },
      child: Container(
        width: 70,
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10), // تحديد المسافة الرأسية بين الـ checkboxes
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: value ? Color(0xFF156260) : Colors.transparent,
          border: Border.all(color: Color(0xFF156260)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(),
              SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: value ? Colors.white : Color(0xFF156260),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
