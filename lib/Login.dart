import 'package:flutter/material.dart';

class Login_Intro extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login_Intro>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입/로그인"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz1result');}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: SingleChildScrollView(
                child:Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(1),
                        child: Center(
                          child: Text('회원 로그인'),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: '아이디 입력'
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: '비밀번호 입력'
                            ),
                          )
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text('보안접속'),
                            Icon(Icons.check_box),
                            Text('아이디 저장'),
                          ],
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/JoinPage');
                          },
                          child: const Text('로그인',style: TextStyle(fontSize:25)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(350,50),
                              backgroundColor: Colors.green
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:  Container(width: 500,
                          child: Divider(color: Colors.red, thickness: 2.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Row(
                        children: <Widget>[
                          TextButton(onPressed: (){}, child: Text('회원가입',style: TextStyle(fontSize:15,color: Colors.black),)),
                          Text('|'),
                          TextButton(onPressed: (){}, child: Text('아이디/비밀번호 찾기',style: TextStyle(fontSize:15,color: Colors.black),)),

                        ],
                      ),
                    ),
                  ],
                )

      ),
      bottomNavigationBar: Container(
        height: 250, // 고정된 하단 컨테이너 높이
        color: Colors.grey,
        child: Center(child: Text('고정된 하단 컨텐츠')),
      ),











    );
  }
}