import 'package:flutter/material.dart';
import 'package:spoon_serial_wj/Taxi_Intro.dart';
import 'package:spoon_serial_wj/incart.dart';
import 'package:spoon_serial_wj/paytype.dart';
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
import 'LoginAgain.dart';
import 'Pay.dart';
import 'search.dart';
import 'shop.dart';
import 'menu.dart';
import 'option.dart';
import 'incart.dart';
import 'seecart.dart';
import 'order.dart';
import 'paytype.dart';
import 'finish.dart';
import 'selecttaxi.dart';
import 'selectstart.dart';
import 'selectstartinput.dart';
import 'selectend.dart';
import 'selectendinput.dart';
import 'selecttaxitype.dart';
import 'taxipaytype.dart';
import 'calltaxi.dart';
import 'taxi_finish.dart';


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
        '/LoginAgain' : (context) => Login_Again(),
        '/LoginSuccess' : (context) => LoginSuccess(),
        '/Pay_Intro' : (context) => Pay_Intro(),
        '/Pay_Input' : (context) => Pay_Input(),
        '/Pay_Success' : (context) => Pay_Success(),
        '/Delivery_Search' : (context) => Search(),
        '/Delivery_Shop' : (context) => Shop(),
        '/Delivery_Menu' : (context) => Menu(),
        '/Delivery_Option' : (context) => Option(),
        '/Delivery_Incart' : (context) => InCart(),
        '/Delivery_Seecart' : (context) => SeeCart(),
        '/Delivery_Order' : (context) => Order(),
        '/Delivery_PayType' : (context) => PayType(),
        '/Delivery_Finish' : (context) => Finish(),
        '/Mob_Select' : (context) => SelectTaxi(),
        '/Mob_Depart' : (context) => SelectStart(),
        '/Mob_DepartInput' : (context) => SelectStartInput(),
        '/Mob_Arrive' : (context) => SelectEnd(),
        '/Mob_ArriveInput' : (context) => SelectEndInput(),
        '/Mob_SelectType' : (context) => SelectTaxiType(),
        '/Mob_PayType' : (context) => TaxiPayType(),
        '/Mob_CallTaxi': (context) => CallTaxi(),
        '/Mob_Finish' : (context) => Taxi_Finish(),


      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: Scaffold(
            body:Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child:Text('반갑습니다!',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 48,fontWeight: FontWeight.bold)),
                    ),
                    /*Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.asset('image/serial_logo.jpg'),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child:Text('여러분의 행복한 디지털 생활을 \n책임지는 시리얼(Serial)입니다!',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 25,)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:30),
                      child:ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: const Text('시작하기',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(350,50),
                              backgroundColor: Colors.green[900],
                            shape: StadiumBorder(),
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
