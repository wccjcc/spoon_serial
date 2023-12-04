import 'package:flutter/material.dart';

class Login_Again extends StatefulWidget {

  @override
  _LoginAgainState createState() => _LoginAgainState();
}
class _LoginAgainState extends State<Login_Again>{
  final TextEditingController _idinputController = TextEditingController();
  final TextEditingController _pwinputController = TextEditingController();
  bool _isLoginFailed = false;
  @override
  void dispose() {
    _idinputController.dispose();
    _pwinputController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    final Map? arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    // 인자가 널인 경우 처리
    if (arguments == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("로그인 정보"),
        ),
        body: Center(child: Text("인자를 받아오지 못했습니다.")),
      );
    }

    // 인자가 널이 아닌 경우, 값을 할당합니다.
    final String id = arguments['id'];
    final String password = arguments['password'];
    final String name = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입/로그인",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
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
                      controller: _idinputController,
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
                      controller: _pwinputController,
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

                      if (_idinputController.text == id && _pwinputController.text == password){
                        Navigator.of(context).pushNamed('/LoginSuccess',arguments: name);
                      }
                      else{
                        setState(() {
                          _isLoginFailed = true; // 로그인 실패 상태 업데이트
                        });
                      }

                    },
                    child: const Text('로그인',style: TextStyle(fontSize:25,fontWeight: FontWeight.normal)),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(350,50),
                        backgroundColor: Colors.black
                    )
                ),
              ),
              if (_isLoginFailed) // 로그인 실패 메시지 표시
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    '아이디나 비밀번호를 확인해주세요',
                    style: TextStyle(color: Colors.red),
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
                child: Text('이제 회원가입 때 입력한 정보로 \n로그인 할 수 있습니다!',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('아이디와 비밀번호를 입력 후 \n로그인 버튼을 클릭하세요',style: TextStyle(fontSize: 18),)
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



class LoginSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Object? routeArguments = ModalRoute.of(context)?.settings.arguments;
    final String name = routeArguments as String? ?? '입력값 없음';
    return Scaffold(
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('로그인에 성공하였습니다!\n안녕하세요 $name님!',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/second');},
                      child: const Text('처음으로 돌아가기',style: TextStyle(fontSize:23,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(350,50),
                          backgroundColor: Colors.green[900],
                          shape: StadiumBorder(),
                        )
                    )
                ),

              ],
            )
        )
    );
  }
}