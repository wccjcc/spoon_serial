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
        title: Text("회원가입"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz1result');}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(1),
                  child: Center(
                    child: Text('회원 가입'),
                  )
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text('아이디'),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: _idController,
                  decoration: InputDecoration(
                    labelText: '아이디',
                    border:OutlineInputBorder(),
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text('비밀번호')
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    border:OutlineInputBorder(),
                  ),

                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('비밀번호 규칙 : 8~12자 영문,숫자,특수문자를 포함')
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('비밀번호 확인')
              ),
              Padding(
                padding: EdgeInsets.all(5),
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
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('이름')
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: '이름',
                    border:OutlineInputBorder(),
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:5),
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
                    child: const Text('회원가입',style: TextStyle(fontSize:25)),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300,30),
                        backgroundColor: Colors.green
                    )
                ),
              ),

            ],
          )

      ),
      bottomNavigationBar: Container(
        height: 100, // 고정된 하단 컨테이너 높이
        color: Colors.grey,
        child: Center(child: Text('고정된 하단 컨텐츠')),
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