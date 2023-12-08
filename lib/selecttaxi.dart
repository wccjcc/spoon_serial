import 'package:flutter/material.dart';

void main() {
  runApp(SelectTaxi());
}

class SelectTaxi extends StatelessWidget {
  const SelectTaxi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('1. 택시 선택하기',
        style: TextStyle(
          color: Colors.white,
          //fontSize: 25.0,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      backgroundColor: Colors.green[900],
      ),
      //스택 구조로 바꿔도 될듯 -> 디자인적으로 둥글게 만드려면
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            height: 65.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.indigo,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 65.0,
                  alignment: Alignment.center,

                  child: Text('ㅇㅇ',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 65.0,
                  alignment: Alignment.center,

                  child: Text('홈',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 65.0,
                  alignment: Alignment.center,

                  child: Text('ㅁㅁ',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 391.4,
            width: MediaQuery.of(context).size.width,

            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 65.0,
                  width: 350.0,

                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(20.0,
                    ),
                  ),

                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('  어디로 갈까요?',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '       택시를 선택해주세요',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 90.0,
                  width: 350.0,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/Mob_Depart');
                        },
                        child: Container(
                          height: 90.0,
                          width: 70.0,
                          alignment: Alignment.center,

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(3.0),
                          ),

                          child: Column(
                            children: [
                              Image.asset(
                                'image/icon_circle1.png',
                                height: 55.0,
                              ),
                              Text(
                                '택시',
                                style: TextStyle(
                                  fontSize: 19.5,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /*
                      Container(
                        height: 90.0,
                        width: 70.0,
                        alignment: Alignment.center,

                       decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.red,
                           width: 3.0,
                         ),
                         borderRadius: BorderRadius.circular(3.0),
                       ),

                       child: Column(
                         children: [
                           Image.asset('assets/icon_circle1.png',
                             height: 55.0,
                           ),
                           Text('택시',
                             style: TextStyle(
                               fontSize: 20.5,
                               fontWeight: FontWeight.w700,
                             ),
                           ),
                         ],
                       ),
                      ),*/
                      Container(
                        height: 90.0,
                        width: 70.0,
                        alignment: Alignment.center,

                        child: Column(
                          children: [
                            Image.asset('image/icon_circle1.png',
                              height: 55.0,
                            ),
                            Text('ㅇㅇ',
                              style: TextStyle(
                                fontSize: 20.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 90.0,
                        width: 70.0,
                        alignment: Alignment.center,

                        child: Column(
                          children: [
                            Image.asset('image/icon_circle1.png',
                              height: 55.0,
                            ),
                            Text('ㅁㅁ',
                              style: TextStyle(
                                fontSize: 20.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.0,),

                Container(
                  height: 90.0,
                  width: 350.0,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 90.0,
                        width: 70.0,
                        alignment: Alignment.center,

                        child: Column(
                          children: [
                            Image.asset('image/icon_circle1.png',
                              height: 55.0,
                            ),
                            Text('택시',
                              style: TextStyle(
                                fontSize: 20.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 90.0,
                        width: 70.0,
                        alignment: Alignment.center,

                        child: Column(
                          children: [
                            Image.asset('image/icon_circle1.png',
                              height: 55.0,
                            ),
                            Text('ㅇㅇ',
                              style: TextStyle(
                                fontSize: 20.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 90.0,
                        width: 70.0,
                        alignment: Alignment.center,

                        child: Column(
                          children: [
                            Image.asset('image/icon_circle1.png',
                              height: 55.0,
                            ),
                            Text('ㅁㅁ',
                              style: TextStyle(
                                fontSize: 20.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /*Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[400],

            child: Align(
              alignment: Alignment.topCenter,
              child: Text('키오스크 이용법에 대한 설명',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),*/
        ],
      ),
      bottomNavigationBar: Container(
        height: 220, // 고정된 하단 컨테이너 높이
        color: Colors.grey[400],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 5,left: 10),
              child: Text('도움말',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('먼저 택시를 잡기 위해서는 많은 교통수단 중 택시를 선택해야 합니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('빨간색으로 표시된 택시 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child:FittedBox(
            child: FloatingActionButton(
              onPressed: (){Navigator.of(context).pushNamed('/second');},
              child: Icon(Icons.home),
              backgroundColor: Colors.green[900],
            ),
          )
      ),
    );
  }
}