import 'package:flutter/material.dart';

class JoinPage extends StatefulWidget {
  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<JoinPage>{
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
        ],
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 5),
                  child: Center(
                    child: Text('회원 가입',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text('아이디',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  child: TextField(
                    controller: _idController,
                    decoration: InputDecoration(
                      labelText: '아이디',
                      border:OutlineInputBorder(),
                    ),
                  ),
                  width: 250,
                  height: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text('비밀번호',style: TextStyle(fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: '비밀번호',
                      border:OutlineInputBorder(),
                    ),
                  ) ,
                  width: 250,
                  height: 40,
                )
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('비밀번호 규칙 : 8~12자 영문,숫자,특수문자를 포함',style: TextStyle(color: Colors.redAccent),)
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('비밀번호 확인',style: TextStyle(fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  child: TextField(
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    decoration: InputDecoration(
                      labelText: '비밀번호 확인',
                      border:OutlineInputBorder(),
                    ),

                  ),
                  width: 250,
                  height: 40,
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('이름',style: TextStyle(fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: '이름',
                      border:OutlineInputBorder(),
                    ),
                  ),
                  width: 250,
                  height: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:5),
                child:  Container(width: 500,
                    child: Divider(color: Colors.black54, thickness: 1.0)),
              ),
              Padding(
                padding: EdgeInsets.only(top:5,left: 5,right: 5),
                child:ElevatedButton(
                    onPressed: () {
                      // 모든 필드가 채워졌는지 확인
                      if (_idController.text.isEmpty || _passwordController.text.isEmpty || _nameController.text.isEmpty) {
                        // 경고 메시지를 표시
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('모든 항목을 입력해주세요.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else {
                        // 모든 필드가 채워져 있으면, 다음 페이지로 네비게이션
                        Navigator.of(context).pushNamed(
                          '/LoginAgain',
                          arguments: {
                            'id': _idController.text,
                            'password': _passwordController.text,
                            'name': _nameController.text,
                          },
                        );
                      }
                    },
                    child: const Text('회원가입',style: TextStyle(fontSize:20,)),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(500,50),
                        backgroundColor: Colors.black
                    )
                ),
              ),

            ],
          )

      ),
      bottomNavigationBar: Container(
        height: 200, // 고정된 하단 컨테이너 높이
        color: Colors.grey[400],
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 5,left: 10),
              child: Text('도움말',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('아이디 : 아이디로 쓸 단어를 써주세요\n비밀번호 : 비밀번호 생성 규칙에 따라 만들어주세요\n비밀번호 확인 : 위에서 쓴 비밀번호를 한 번 더 써주세요\n이름 : 성함을 써주세요',style: TextStyle(fontSize: 15),)
            ),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('주의 : 입력하신 아이디와 비밀번호는 기억해두셔야 합니다!',style: TextStyle(fontSize: 15),)
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