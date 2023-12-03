import 'package:flutter/material.dart';

class Delivery_Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('배달을 연습하시겠어요?',style: TextStyle(fontSize:30),),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/Delivery_Goal');},
                      child: const Text('네',style: TextStyle(fontSize:20),),
                    )
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/featureprac');},
                      child: const Text('아니오',style: TextStyle(fontSize:20),),
                    )
                )
              ],
            )
        )
    );
  }
}

class Delivery_Goal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('배달이 어쩌고 저쩌고',style: TextStyle(fontSize:30),),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('1. 어쩌고저쩌고',style: TextStyle(fontSize:30),),
                ),

                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/featureprac');},
                      child: const Text('다음',style: TextStyle(fontSize:20),),
                    )
                )
              ],
            )
        )
    );
  }
}