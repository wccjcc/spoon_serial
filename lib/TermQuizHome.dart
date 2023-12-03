import 'package:flutter/material.dart';

class TermQuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('랜덤 용어 퀴즈를 \n시작하겠습니다!',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child:ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/TermQuiz1');
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
    );
  }
}