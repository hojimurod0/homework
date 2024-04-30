import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "HI, Obidjanov.01",
            style: TextStyle(color: Colors.black, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.face,
            size: 40,
            color: Colors.black,
          ),
          actions: const [
            Icon(
              Icons.notifications,
              size: 40,
              color: Colors.black,
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 15, // Ekranning tepasiga joylash
              left: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width, // Ekran eni bo'ylab
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink.shade50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discover How To',
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        ),
                        SizedBox(height: 2), // Add spacing between text and image
                        Text(
                          'To Be Creative',
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      "assets/images/rocket.png",
                      width: 75,
                      height: 75,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(50),
              ),
            ),
            Positioned(
              top: 220, // Qo'shimcha matnning joylashgan bo'lishi
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align to the start
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                
                    ),
                    child: Text(
                      'Instructor',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                 
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildPersonIconWithName('Ali'),
                        _buildPersonIconWithName('John'),
                        _buildPersonIconWithName('Emily'),
                        _buildPersonIconWithName('Mike'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 410, // Adjust the top position as needed
              left: 10,
              right: 10,
              bottom: 15,
              child: Image.asset(
                "assets/images/person.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,

                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonIconWithName(String name) {
    return Column(
      children: [
        Icon(
          Icons.person,
          size: 40,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
