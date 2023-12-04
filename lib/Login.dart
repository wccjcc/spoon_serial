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
        title: Text("회원가입/로그인",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/JoinPage');}, icon: Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
                child:Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text('회원 로그인',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                            Text('보안접속',textAlign: TextAlign.left,),
                            Expanded(
                              child: Container(),
                            ),
                            Icon(Icons.check_box),
                            Text('아이디 저장',textAlign: TextAlign.right,),
                          ],
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:ElevatedButton(
                          onPressed: (){

                          },
                          child: const Text('로그인',style: TextStyle(fontSize:25,fontWeight: FontWeight.normal)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(350,50),
                              backgroundColor: Colors.black
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:  Container(width: 500,
                          child: Divider(color: Colors.black54, thickness: 1.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(onPressed: (){Navigator.of(context).pushNamed('/JoinPage');}, child: Text('회원가입',style: TextStyle(fontSize:15,color: Colors.redAccent,fontWeight: FontWeight.bold),)),
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
              child: Text('로그인을 하려면 먼저 회원가입을 해야 합니다. \n한 번 회원가입을 하면 다시 할 필요가 없습니다!',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('중앙 최 하단에 위치한 빨강색의 회원가입 글자를 클릭하세요',style: TextStyle(fontSize: 18),)
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