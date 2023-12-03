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
    return Scaffold(
      appBar: AppBar(
        title: Text("랜덤 용어 문제 풀기"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz2');}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Text(userInput),
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

class TermQuiz2 extends StatelessWidget{
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
        child: Text("용어연습2"),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("랜덤 용어 문제 풀기"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Text("용어연습2결과"),
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