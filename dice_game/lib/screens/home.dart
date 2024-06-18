import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  void onPressed () {

  }

  void newThing () {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Home Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),)
          ),
          backgroundColor: const Color(0xff29A0E3),
        ),
        body: Container(
          color: const Color(0xFF000000),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Flutter Practice',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff29A0E3),
                        fixedSize: Size(150, 60)),
                      child: const Center(
                        child: Text(
                          'List View',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),),
                    ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff29A0E3),
                        fixedSize: Size(150, 60)),
                      child: const Center(
                        child: Text(
                          'Grid View',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),),
                  ],
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/dice');
                    }, style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff29A0E3),
                        fixedSize: Size(150, 60)),
                      child: const Center(
                        child: Text(
                          'Dice',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),),
                    ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff29A0E3),
                        fixedSize: Size(150, 60)),
                      child: const Center(
                        child: Text(
                          'Animation',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),),
                  ],
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
