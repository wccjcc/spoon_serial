import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'TermQuizHome.dart';
import 'FeaturePracHome.dart';

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
        initialRoute: '/',
        routes: {
          '/second' : (context) => Select_Mode(),
        },
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
