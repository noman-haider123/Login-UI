import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:  AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              "My App",
              style: TextStyle(
                fontFamily: 'EBGaramond',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [ 
              Image(image:  AssetImage('assets/logo.png'),width: 100, height: 100),
              SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'EBGaramond',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
             ListTile(
              leading: Icon(Icons.access_alarm,color: Colors.black,),
              title: Text(
                'Clock',
                style: TextStyle(
                  fontFamily: 'EBGaramond',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
             )
            ],
          )
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:55, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Image(image:  AssetImage('assets/logo.png'),width: 50, height: 50),
              Row(
                children: [
              Text(
                'Maintenance',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'EBGaramond',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Box',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'EBGaramond',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
                ],
              ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'EBGaramond',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Please login to continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'EBGaramond',
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Username Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(fontFamily: 'EBGaramond'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),

              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontFamily: 'EBGaramond'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'EBGaramond',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),label: 'Clock')

          ] 
          ),
      ),
    );
  }
}
