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
              padding: EdgeInsets.only(bottom: 50),
              child : const Text('어떤것을 하고싶으세요?',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold),)
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () => _addButton('기능 연습하기'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(350,50),
                        backgroundColor: Colors.grey[200],
                      side: BorderSide(color: Colors.grey, width: 2), // 테두리 색상 및 두께 설정
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // 버튼의 모서리 둥글기 설정
                      ),

                    ),
                    child: const Text('기능 연습하기',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold),
                    )
                )
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () => _addButton('용어 퀴즈풀기'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(350,50),
                      backgroundColor: Colors.grey[200],
                      side: BorderSide(color: Colors.grey, width: 2), // 테두리 색상 및 두께 설정
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // 버튼의 모서리 둥글기 설정
                      ),

                    ),
                    child: const Text('용어 퀴즈풀기',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold),)
                )

            ),
            _isButtonAdded
                ? Padding(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: _navigateToPage,
                style: ElevatedButton.styleFrom(
                  maximumSize: Size(200,80),
                  minimumSize: Size(180,50),
                  backgroundColor: Colors.grey[500],
                  side: BorderSide(color: Colors.black38, width: 2), // 테두리 색상 및 두께 설정
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // 버튼의 모서리 둥글기 설정
                  ),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_buttonText, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.arrow_forward),
                    ),
                  ],
                )
              ),
            )
                : Container(),

          ],
        ),
      )
    );
  }
}