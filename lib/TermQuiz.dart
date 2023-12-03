import 'package:flutter/material.dart';

class TermQuiz1 extends StatefulWidget {
  @override
  _TermQuiz1State createState() => _TermQuiz1State();
}
class _TermQuiz1State extends State<TermQuiz1>{
  String _userInput = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("랜덤 용어 문제 풀기"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz1result');}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text('Q1. 아래 카드의 \n3자리 CVC 번호는 무엇일까요?'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Image.asset('image/cardQuiz.png',width:200,height: 100,fit:BoxFit.contain),
            ),
            Padding(
              padding: EdgeInsets.only(top:50),
              child: Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width:200,
                      child:Padding(
                        padding: EdgeInsets.all(1),
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              _userInput = value;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: '텍스트입력',
                            hintText: '정답을 입력해주세요',
                            border:OutlineInputBorder(),
                          ),

                        ),
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.all(1),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  '/TermQuiz1result',
                                  arguments: _userInput,
                              );
                            },
                            child: const Text('입력',style: TextStyle(fontSize:10),)
                        )
                    )
                  ],
                ),
              )
            )
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
          ),
        )
      ),

    );
  }
}

class TermQuiz1result extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Object? routeArguments = ModalRoute.of(context)?.settings.arguments;
    final String userInput = routeArguments as String? ?? '입력값 없음';
    String resultText = userInput == '123' ? '맞았습니다' : '틀렸습니다';

    return Scaffold(
      appBar: AppBar(
        title: Text("랜덤 용어 문제 풀기"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz2');}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text('Q1. 아래 카드의 \n3자리 CVC 번호는 무엇일까요?'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text(resultText),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Image.asset('image/cardAnswer.png',width:200,height: 100,fit:BoxFit.contain),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text('입력한 답 : $userInput \n 정답 : 123'),
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
              child:ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/TermQuiz2');
                  },
                  child: const Text('다음 문제',style: TextStyle(fontSize:25)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(350,50),
                      backgroundColor: Colors.green
                  )
              ),
            )

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
            ),
          )
      ),

    );
  }
}

class TermQuiz2 extends StatefulWidget {
  @override
  _TermQuiz2State createState() => _TermQuiz2State();
}

class _TermQuiz2State extends State<TermQuiz2>{
  String _selectedButton = '';

  void _updateButton(String number){
    setState(() {
      _selectedButton = '$number 번';
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("랜덤 용어 문제 풀기"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz2result');}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text('Q2. 지금 계시는 위치를 알기 위해서는\n 어떤 버튼을 눌러야 할까요?'),
            ),

            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Image.asset('image/Quiz2real.png',width:400,height: 400,fit:BoxFit.contain),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Row(
                children: <Widget>[
                  TextButton(onPressed: (){_updateButton('1');}, child: Text('①',style: TextStyle(fontSize:30,color: Colors.black),)),
                  TextButton(onPressed: (){_updateButton('2');}, child: Text('②',style: TextStyle(fontSize:30,color: Colors.black),)),
                  TextButton(onPressed: (){_updateButton('3');}, child: Text('③',style: TextStyle(fontSize:30,color: Colors.black),)),
                  TextButton(onPressed: (){_updateButton('4');}, child: Text('④',style: TextStyle(fontSize:30,color: Colors.black),)),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 1),
              child: Row(
                children: <Widget>[
                  Text('$_selectedButton'),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed('/TermQuiz2result',arguments: _selectedButton);
                      },
                      child: const Text('제출',style: TextStyle(fontSize:10)),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(50,20),
                          backgroundColor: Colors.green
                      )
                  ),
                ],
              ),

            )



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
            ),
          )
      ),

    );
  }
}

class TermQuiz2result extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final Object? routeArguments = ModalRoute.of(context)?.settings.arguments;
    final String userInput = routeArguments as String? ?? '입력값 없음';
    String resultText = userInput == '2 번' ? '맞았습니다' : '틀렸습니다';
    return Scaffold(
      appBar: AppBar(
        title: Text("랜덤 용어 문제 풀기"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text('Q2. 지금 계시는 위치를 알기 위해서는\n 어떤 버튼을 눌러야 할까요?'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 1),
              child:Text(resultText)
            ),

            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Image.asset('image/Quiz2real.png',width:400,height: 400,fit:BoxFit.contain),
            ),

            Padding(
              padding: EdgeInsets.only(bottom:1),
              child:Text('입력한 답 : $userInput \n 정답 : 2 번'),
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
              child:ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/TermQuizEnd');
                  },
                  child: const Text('끝내기',style: TextStyle(fontSize:25)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(350,50),
                      backgroundColor: Colors.green
                  )
              ),
            )


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
            ),
          )
      ),

    );
  }
}

class TermQuizEnd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body:Center(
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 300,bottom:300),
                      child:Text('수고하셨습니다!',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 40)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: const Text('처음으로 돌아가기',style: TextStyle(fontSize:25)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(350,50),
                              backgroundColor: Colors.green
                          )
                      ),
                    )

                  ],
                )
            )
        )
    );
  }
}