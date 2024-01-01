import 'package:flutter/material.dart';

class redsauce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ':وصفة معكرونة بالصلصة الحمراء ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Image.asset(
                  'assets/مكرونه.jpeg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ': المكونات ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                buildIngredientRow([
                  Ingredient(name: 'معكرونة', imagePath: 'assets/معكرونه.jpg', quantity: '200 غرام', smallText: true, textColor: Colors.black),
                  Ingredient(name: 'زيت الزيتون', imagePath: 'assets/زيت.jpg', quantity: '2 ملعقة كبيرة', smallText: true, textColor: Colors.black),
                  Ingredient(name: 'الثوم', imagePath: 'assets/ثومه.jpg', quantity: '3 فصوص', smallText: true, textColor: Colors.black),
                ]),
                SizedBox(height: 16),
                buildIngredientRow([
                  Ingredient(name: 'صوص المعكرونة', imagePath: 'assets/صوص.jpg', quantity: '1 كوب', smallText: true, textColor: Colors.black),
                  Ingredient(name: 'إكليل الجبل', imagePath: 'assets/اكليل.jpg', quantity: '1 ملعقة صغيرة', smallText: true, textColor: Colors.black),
                  Ingredient(name: 'ريحان', imagePath: 'assets/ريحان.jpg', quantity: '2 ملعقة صغيرة', smallText: true, textColor: Colors.black),
                ]),
                SizedBox(height: 16),
                buildIngredientRow([
                  Ingredient(name: 'هيل', imagePath: 'assets/هيل.jpg', quantity: '1/2 ملعقة صغيرة', smallText: true, textColor: Colors.black),
                  Ingredient(name: 'ملح', imagePath: 'assets/ملح.jpg', quantity: 'حسب الذوق', smallText: true, textColor: Colors.black),
                  Ingredient(name: 'فلفل أسود', imagePath: 'assets/فلفل.jpg', quantity: 'حسب الذوق', smallText: true, textColor: Colors.black),
                ]),
                SizedBox(height: 16),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'طريقة التحضير :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    '1. أسلقي المعكرونة في ماء مملح وفقًا لتعليمات العبوة، ثم صفّيها واتركيها جانباً.\n'
                        '2. في قدر على حرارة متوسطة، سخّني الزيت وقلّبي فيه الثوم حتى يتغير لونه.\n'
                        '3. أضيفي صلصة الطماطم ونكّهي بالملح، الفلفل الأسود، إكليل الجبل، الريحان والهيل.\n'
                        '4. قلّبي المزيج حتى يغلي.\n'
                        '5. أضيفي المكرونة وقلّبي من جديد حتى تتداخل المكونات.\n'
                        '6. قدّمي الطبق مباشرةً على سفرتك.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 32), // مسافة في نهاية الصفحة
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIngredientRow(List<Ingredient> ingredients) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: ingredients.map((ingredient) => buildIngredient(ingredient)).toList(),
    );
  }

  Widget buildIngredient(Ingredient ingredient) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xFF156260), // لون الحدود
              width: 2.0, // عرض الحدود
            ),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(ingredient.imagePath),
          ),
        ),
        SizedBox(height: 4), // تقليل المسافة بين الصورة والنص

        Text(
          ingredient.name,
          style: TextStyle(fontSize: ingredient.smallText ? 14 : 18, color: ingredient.textColor),
        ),
        if (ingredient.quantity != null) SizedBox(height: 4), // تقليل المسافة بين النصوص

        if (ingredient.quantity != null)
          Text(
            ingredient.quantity!,
            style: TextStyle(fontSize: ingredient.smallText ? 12 : 14, color: ingredient.textColor),
          ),
      ],
    );
  }
}

class Ingredient {
  final String name;
  final String imagePath;
  final String? quantity;
  final bool smallText;
  final bool largeText;
  final Color textColor;

  Ingredient({
    required this.name,
    required this.imagePath,
    this.quantity,
    this.smallText = false,
    this.largeText = false,
    this.textColor = Colors.black,
  });
}
