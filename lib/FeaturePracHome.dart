import 'package:flutter/material.dart';

class FeaturePracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "어떤 기능을 연습해볼까요?",
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
                _buildBoxButton(context, "로그인/회원가입", Icons.vpn_key, () {
                  // 로그인/회원가입 버튼을 탭했을 때의 동작
                  Navigator.of(context).pushNamed('/Login_Intro');
                }),
                _buildBoxButton(context, "결제", Icons.payment, () {
                  // 결제 버튼을 탭했을 때의 동작
                  Navigator.of(context).pushNamed('/Pay_Intro');
                }),
                _buildBoxButton(context, "키오스크", Icons.computer, () {
                  // 기요스크 버튼을 탭했을 때의 동작
                  Navigator.of(context).pushNamed('/Kiosk_Intro');
                }),
                _buildBoxButton(context, "뱅킹", Icons.money, () {
                  // 뱅킹 버튼을 탭했을 때의 동작
                  Navigator.of(context).pushNamed('/Banking_Intro');
                }),
                _buildBoxButton(context, "택시", Icons.local_taxi, () {
                  // 택시 버튼을 탭했을 때의 동작
                  Navigator.of(context).pushNamed('/Taxi_Intro');
                }),
                _buildBoxButton(context, "배달", Icons.delivery_dining, () {
                  // 배달 버튼을 탭했을 때의 동작
                  Navigator.of(context).pushNamed('/Delivery_Intro');
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
