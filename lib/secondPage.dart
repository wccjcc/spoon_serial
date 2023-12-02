import 'package:flutter/material.dart';

class Select_Mode extends StatefulWidget{
  @override
  _SelectModeState createState() => _SelectModeState();
}
class _SelectModeState extends State<Select_Mode> {
  String _buttonText ='';
  bool _isButtonAdded = false;

  void _addButton(String text) {
    setState(() {
      if (!_isButtonAdded) {
        _buttonText = text;
        _isButtonAdded = true;
      } else {
        _buttonText = text; // 버튼이 이미 추가되었으면 텍스트만 변경합니다.
      }
    });
  }
  void _navigateToPage() {
    if (_buttonText == '기능 연습하기') {
      Navigator.of(context).pushNamed('/featureprac');
    } else if (_buttonText == '용어 퀴즈풀기') {
      Navigator.of(context).pushNamed('/TermQuiz');
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child : const Text('어떤것을 하시겠어요?',style: TextStyle(fontSize:30),)
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () => _addButton('기능 연습하기'),
                    child: const Text('기능 연습하기',style: TextStyle(fontSize:10),)
                )
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () => _addButton('용어 퀴즈풀기'),
                    child: const Text('용어 퀴즈풀기',style: TextStyle(fontSize:10),)
                )

            ),
            _isButtonAdded
                ? Padding(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: _navigateToPage,
                child: Text(_buttonText, style: TextStyle(fontSize: 20)),
              ),
            )
                : Container(),

          ],
        ),
      )
    );
  }
}