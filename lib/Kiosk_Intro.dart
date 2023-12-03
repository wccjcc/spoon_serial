import 'package:flutter/material.dart';

class Kiosk_Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "해보고싶은 항목을 \n 선택해주세요",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0), // 리스트 뷰 전체에 패딩을 추가합니다.
              children: <Widget>[
                _buildBoxButton(context, "1단계 \n 아이스크림", Icons.icecream, () {
                  Navigator.of(context).pushNamed('/Icecream_Intro');
                }),
                _buildBoxButton(context, "2단계 \n 음식", Icons.food_bank, () {

                }),
                _buildBoxButton(context, "3단계 \n 카페", Icons.coffee, () {

                }),
                _buildBoxButton(context, "4단계 \n 햄버거", Icons.fastfood, () {

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
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0), // 카드의 여백을 지정합니다.
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
              Text(title, style: TextStyle(fontSize: 18.0)),
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
                  padding: EdgeInsets.all(15),
                  child: Text('아이스크림키오스크를 연습하시겠어요?',style: TextStyle(fontSize:30),),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/Icecream_Goal');},
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

class Icecream_Goal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('파티맛아이스크림',style: TextStyle(fontSize:30),),
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
