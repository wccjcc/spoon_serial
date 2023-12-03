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
                    padding: EdgeInsets.only(bottom: 50),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black), // 기본 스타일
                        children: <TextSpan>[
                          TextSpan(
                            text: '\'배달시키기\'',
                            style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                          ),
                          TextSpan(
                            text: '를\n연습하시겠어요?',
                          ),
                        ],
                      ),
                    )
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/Delivery_Goal');},
                        child: const Text('네',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(350,50),
                          backgroundColor: Colors.green[900],
                          shape: StadiumBorder(),
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/featureprac');},
                        child: const Text('아니오',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(350,50),
                          backgroundColor: Colors.grey[500],
                          shape: StadiumBorder(),
                        )
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
                    padding: EdgeInsets.only(bottom: 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black), // 기본 스타일
                        children: <TextSpan>[
                          TextSpan(
                            text: '배달이\n',
                            style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                          ),
                          TextSpan(
                            text: '어쩌고\n',
                          ),


                        ],
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text('1. ㅇㅇ',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('2. ㅁㅁ',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('3. ㅅㅅ',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('4. ㄷㄷ',style: TextStyle(fontSize:25,color: Colors.black54),),
                    ],
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                        onPressed: (){Navigator.of(context).pushNamed('/featureprac');},
                        child: const Text('다음',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(350,50),
                          backgroundColor: Colors.green[900],
                          shape: StadiumBorder(),
                        )
                    )
                )
              ],
            )
        )
    );
  }
}