import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'ingredients.dart';
import 'profile.dart';
import 'favourite.dart';
import 'navbar.dart';
import 'camera screen.dart';  // Ensure this import is correct
import 'second_page.dart';

class foodtypes extends StatefulWidget {
  @override
  _FoodTypesState createState() => _FoodTypesState();
}

class _FoodTypesState extends State<foodtypes> {
  int _selectedIndex = 0;
  late CameraController _cameraController;
  late Future<void> _initializeCameraFuture;

  @override
  void initState() {
    super.initState();
    _initializeCameraFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    _cameraController = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );
    await _cameraController.initialize();
  }

  Future<void> _takePicture() async {
    try {
      final XFile? picture = await _cameraController.takePicture();
      if (picture != null) {
        print("Picture taken: ${picture.path}");
      }
    } catch (e) {
      print("Error taking picture: $e");
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => favourite(),
          ),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => profile(),
          ),
        );
      } else if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => secondPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Types'),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraScreen(
                    cameraController: _cameraController,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          width: 500,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(

          ),
          child: Stack(
            children: [
              Positioned(
                left: 200,
                top: 10,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ingredients()),
                        );
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/m.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: CircleBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 22.70,
                              offset: Offset(5, 6),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('معكرونات'),
                  ],
                ),
              ),
              Positioned(
                left: 31,
                top: 14,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/معجنات.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('معجنات'),
                  ],
                ),
              ),
              Positioned(
                left: 200,
                top: 170,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/شاميه.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('شاميه'),
                  ],
                ),
              ),
              Positioned(
                left: 31,
                top: 170,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/لحوم.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('لحوم'),
                  ],
                ),
              ),
              Positioned(
                left: 200,
                top: 330,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/شوربات.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('شوربات'),
                  ],
                ),
              ),
              Positioned(
                left: 31,
                top: 330,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/صواني.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('صواني'),
                  ],
                ),
              ),
              Positioned(
                left: 200,
                top: 490,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/مقبلات.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('مقبلات'),
                  ],
                ),
              ),
              Positioned(
                left: 31,
                top: 490,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/اطباق جانبيه.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('اطباق جانبية'),
                  ],
                ),
              ),
              Positioned(
                left: 200,
                top: 650,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/سلطات.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('سلطات'),
                  ],
                ),
              ),
              Positioned(
                left: 31,
                top: 650,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/حلويات.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 22.70,
                            offset: Offset(5, 6),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('حلويات'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
