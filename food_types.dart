import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:grad_proj/second_page.dart';
import 'ingredients.dart';
import 'profile.dart';
import 'favourite.dart';
class foodtypes extends StatefulWidget {
  @override
  _FoodTypesState createState() => _FoodTypesState();
}

class _FoodTypesState extends State<foodtypes> {
  int _selectedIndex = 0;
  int index=0;
  late CameraController _cameraController;
  late Future<void> _initializeCameraFuture;

  @override
  void initState() {
    super.initState();
    // Initialize camera
    _initializeCameraFuture = _initializeCamera();
  }

  // Function to initialize camera
  Future<void> _initializeCamera() async {
    // Get available cameras
    final cameras = await availableCameras();
    // Select the first camera
    final firstCamera = cameras.first;
    // Create the camera controller
    _cameraController = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );
    // Initialize the controller
    await _cameraController.initialize();
  }

  // Function to handle taking picture from camera
  Future<void> _takePicture() async {
    try {
      final XFile? picture = await _cameraController.takePicture();
      if (picture != null) {
        // Use the taken picture file...
        print("Picture taken: ${picture.path}");
        // Now you can process the taken picture path here
      }
    } catch (e) {
      print("Error taking picture: $e");
    }
  }

  @override
  void dispose() {
    // Dispose of the camera controller when the widget is disposed.
    _cameraController.dispose();
    super.dispose();
  }

  // Function to handle bottom navigation bar item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
    MaterialPageRoute(builder: (context) => CameraScreen(cameraController: _cameraController)),
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
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/down.png'),
    fit: BoxFit.cover,
    ),
    ),
    child: Stack(
    children: [
    Positioned(
    left: 200,
    top: 10,
    child: Column(
    children: [
    Container(
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
    child: GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ingredients()),
    );
    },
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
    // Add other food types and their labels
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
    bottomNavigationBar: NavigationBarTheme(
    data: const NavigationBarThemeData(
    indicatorColor: Colors.white,
    surfaceTintColor: Colors.yellow,
    ),
    child: NavigationBar(
    //onDestinationSelected:
    height: 60,
    backgroundColor: const Color(0xFF156260),
    selectedIndex: index,
    onDestinationSelected: (int selectedIndex) {
    setState(() {
    index = selectedIndex;
    if (selectedIndex == 1) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => favourite(),
    ),
    );
    } else if (selectedIndex == 2) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>  profile(),
    ),
    );
    } else if (selectedIndex == 0) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>
    secondPage(), // Navigate to profilePage
    ),
    );
    }
    });
    },

    destinations: const [
    NavigationDestination(icon: Icon(Icons.home), label: "Home"),
    NavigationDestination(
    icon: Icon(
    Icons.favorite,
    color: Colors.red,
    ),
    label: "Favorite"),
    NavigationDestination(
    icon: Icon(
    Icons.person,
    color: Colors.blue,
    ),
    label: "Profile"),
    ],
    ),
    ),);
    }
}

class CameraScreen extends StatefulWidget {
  final CameraController cameraController;

  CameraScreen({required this.cameraController});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: FutureBuilder<void>(
        future: widget.cameraController.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(widget.cameraController);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
