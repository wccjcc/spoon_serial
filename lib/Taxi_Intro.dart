import 'package:flutter/material.dart';

class Taxi_Intro extends StatelessWidget {
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
                            text: '\'모빌리티(택시)\'',
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
                      onPressed: (){Navigator.of(context).pushNamed('/Taxi_Goal');},
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

class Taxi_Goal extends StatelessWidget{
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
                            text: 'OO 초등학교에서\nㅁㅁ 아파트로\n',
                            style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                          ),
                          TextSpan(
                            text: '가는 택시를\n',
                          ),
                          TextSpan(
                            text: '직접결제로\n',
                            style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                          ),
                          TextSpan(
                            text: '잡아볼게요!',
                          ),


                        ],
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text('1. 택시 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('2. 출발지 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('3. 도착지 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('4. 택시 종류 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('5. 결제 방법 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('6. 택시 호출하기',style: TextStyle(fontSize:25,color: Colors.black54),),

                    ],
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                        onPressed: (){Navigator.of(context).pushNamed('/Mob_Select');},
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