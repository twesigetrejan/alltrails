import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Kira", "Kampala", "Mubende"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Trails',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 191, 0),
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          ],
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(title: Text(names[index])),
        ),

        // body: Center(
        //   child: SizedBox(
        //     height: 900,
        //     child: Image.asset(
        //       'assets/icons/welcome.webp',
        //       fit: BoxFit.fitHeight,
        //     ),
        //   ),
        // ),
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     SizedBox(height: 20),
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //         padding: EdgeInsets.all(20),
        //         height: 400,
        //         width: 400,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //         padding: EdgeInsets.all(20),
        //         height: 400,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //         padding: EdgeInsets.all(20),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
