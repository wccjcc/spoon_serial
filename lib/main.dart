import 'package:flutter/material.dart';
import 'package:spoon_serial_wj/Taxi_Intro.dart';
import 'secondPage.dart';
import 'TermQuizHome.dart';
import 'FeaturePracHome.dart';
import 'TermQuiz.dart';
import 'Delivery_Intro.dart';
import 'Banking_Intro.dart';
import 'Kiosk_Intro.dart';
import 'Login.dart';
import 'Join.dart';
import 'Taxi_Intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/second' : (context) => Select_Mode(),
        '/featureprac' : (context) => FeaturePracticePage(),
        '/TermQuiz' : (context) => TermQuizPage(),
        '/TermQuiz1' : (context) => TermQuiz1(),
        '/TermQuiz1result' : (context) => TermQuiz1result(),
        '/TermQuiz2' : (context) => TermQuiz2(),
        '/TermQuiz2result' : (context) => TermQuiz2result(),
        '/TermQuizEnd' : (context) => TermQuizEnd(),
        '/Taxi_Intro' : (context) => Taxi_Intro(),
        '/Delivery_Intro' : (context) => Delivery_Intro(),
        '/Taxi_Goal' : (context) => Taxi_Goal(),
        '/Delivery_Goal' : (context) => Delivery_Goal(),
        '/Banking_Intro' : (context) => Banking_Intro(),
        '/Banking_Goal' : (context) => Banking_Goal(),
        '/Kiosk_Intro' : (context) => Kiosk_Intro(),
        '/Icecream_Intro' : (context) => Icecream_Intro(),
        '/Icecream_Goal' : (context) => Icecream_Goal(),
        '/Login_Intro' : (context) => Login_Intro(),
        '/JoinPage' : (context) => JoinPage(),
      },
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        /*initialRoute: '/',
        routes: {
          '/second' : (context) => Select_Mode(),
        },*/
        home: Scaffold(
            body:Center(
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 300,bottom:300),
                      child:Text('반갑습니다!',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 40)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: const Text('시작하기',style: TextStyle(fontSize:25)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(350,50),
                              backgroundColor: Colors.green
                          )
                      ),
                    )

                  ],
                )
            )
        )
    );
  }

}
