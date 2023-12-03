import 'package:flutter/material.dart';

class Kiosk_Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:70,bottom: 30),
            child: Text(
              "해보고싶은 항목을 \n선택해주세요",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0), // 리스트 뷰 전체에 패딩을 추가합니다.
              children: <Widget>[
                _buildBoxButton(context, "1단계 \n아이스크림", Icons.icecream, () {
                  Navigator.of(context).pushNamed('/Icecream_Intro');
                }),
                _buildBoxButton(context, "2단계 \n음식", Icons.food_bank, () {

                }),
                _buildBoxButton(context, "3단계 \n카페", Icons.lock, () {

                }),
                _buildBoxButton(context, "4단계 \n햄버거", Icons.lock, () {

                }),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoxButton(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // 모서리 둥근 정도
        side: BorderSide(color: Colors.grey, width: 2), // 테두리 색상과 두께
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
        highlightColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: Row(
            children: <Widget>[
              Icon(icon, size: 30.0), // 아이콘을 추가합니다.
              SizedBox(width: 24.0), // 아이콘과 텍스트 사이의 간격을 추가합니다.
              Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class Icecream_Intro extends StatelessWidget {
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
                          text: '\'아이스크림\'',
                          style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                        ),
                        TextSpan(
                          text: '\n키오스크를\n연습하시겠어요?',
                        ),
                      ],
                    ),
                  )
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/Icecream_Goal');},
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

class Icecream_Goal extends StatelessWidget{
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
                          text: '파티맛\n(4가지맛)\n',
                          style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                        ),
                        TextSpan(
                          text: '아이스크림을\n',
                        ),
                        TextSpan(
                          text: '포장',
                          style: TextStyle(color: Colors.green), // '아이스크림' 부분의 색상 변경
                        ),
                        TextSpan(
                          text: '으로\n구매해 볼게요!',
                        ),

                      ],
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text('1. 아이스크림 고르기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('2. 포장/매장 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('3. 4가지맛 선택하기',style: TextStyle(fontSize:25,color: Colors.black54),),
                      Text('4. 결제하기',style: TextStyle(fontSize:25,color: Colors.black54),),
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
