import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();

  int win = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Winning Number is  4 ',style: TextStyle(fontSize: 20))),
            const SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: win==4? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5),
              ),

              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: win==4 ?
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.check_box,color: Colors.green,size: 35,),
                    SizedBox(height: 20,),

                    Text('Congratulations You Won The Lottery ',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.error,color: Colors.red,size: 35,),
                    SizedBox(height: 20,),

                    Text('Better Luck Next Time Your Number is $win \nTry Again',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
                  ],
                ),
              )

            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(random.nextInt(10).toString());
            win = random.nextInt(6);
            print(win);
            setState(() {

            });
          },

          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}


