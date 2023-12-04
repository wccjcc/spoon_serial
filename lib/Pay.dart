import 'package:flutter/material.dart';

class Pay_Intro extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}
class _PayState extends State<Pay_Intro>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("결제",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/Pay_Input');}, icon: Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('최종 결제',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Container(
                  color: Colors.black54,
                  height: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom:5),
                      child: Text('결제 수단',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 60,
                          child: OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.grey, // 테두리 색상
                              width: 2.0, // 테두리 두께
                            ),
                          ), ), child: Text('oo페이',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),)),
                        ),
                        Container(
                          width:2,
                          height: 50,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          child: OutlinedButton(onPressed: (){Navigator.of(context).pushNamed('/Pay_Input');},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.grey, // 테두리 색상
                              width: 2.0, // 테두리 두께
                            ),
                          ), ), child: Text('신용카드',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),)),
                        ),
                        Container(
                          width:2,
                          height: 50,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          child: OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.grey, // 테두리 색상
                              width: 2.0, // 테두리 두께
                            ),
                          ), ), child: Text('oo페이',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),)),
                        ),

                      ],
                    ),
                    Container(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 60,
                          child: OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.grey, // 테두리 색상
                              width: 2.0, // 테두리 두께
                            ),
                          ), ), child: Text('휴대폰 결제',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),)),
                        ),
                        Container(
                          width:2,
                          height: 50,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          child: OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.grey, // 테두리 색상
                              width: 2.0, // 테두리 두께
                            ),
                          ), ), child: Text('계좌이체',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),)),
                        ),
                        Container(
                          width:2,
                          height: 50,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          child: OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.grey, // 테두리 색상
                              width: 2.0, // 테두리 두께
                            ),
                          ), ), child: Text('아이코',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),)),
                        ),

                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.check),
                            Text(' 나의 카드와 정보 ',textAlign: TextAlign.left,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('image/card_info.png',width:200,height: 150,fit:BoxFit.contain),
                        Text('카드 비밀번호 : 1234',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    )

                  ],
                ),
              )



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
                child: Text('신용카드로 결제를 해보겠습니다!',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('먼저, 결제 수단에서 신용카드 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
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

class Pay_Input extends StatefulWidget {
  @override
  _PayinputState createState() => _PayinputState();
}
class _PayinputState extends State<Pay_Input>{
  final TextEditingController _cvcController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _cardnumController = TextEditingController();
  final TextEditingController _validController = TextEditingController();

  @override
  void dispose() {
    _pwController.dispose();
    _cvcController.dispose();
    _cardnumController.dispose();
    _validController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("결제",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz1result');}, icon: Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('최종 결제',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Container(
                  color: Colors.black54,
                  height: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: TextField(
                            controller: _cardnumController,
                            decoration: InputDecoration(
                                hintText: '카드번호 입력(-없이,16자리)'
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: TextField(
                            controller: _validController,
                            decoration: InputDecoration(
                                hintText: '유효기간 입력(월/년,/없이)'
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: TextField(
                            controller: _cvcController,
                            decoration: InputDecoration(
                                hintText: 'CVC 번호 입력(3자리)'
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: TextField(
                            controller: _pwController,
                            decoration: InputDecoration(
                                hintText: '비밀번호 입력(앞 2자리)'
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:5),
                      child:ElevatedButton(
                          onPressed: () {
                            // 모든 필드가 채워졌는지 확인
                            if (_pwController.text.isEmpty || _cardnumController.text.isEmpty || _cvcController.text.isEmpty || _validController.text.isEmpty) {
                              // 경고 메시지를 표시
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('모든 항목을 입력해주세요.'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else if(_cardnumController.text == '2345121201280825'&&_validController.text == '0328'&&_cvcController.text == '123'&&_pwController.text == '12'){
                              // 모든 필드가 채워져 있으면, 다음 페이지로 네비게이션
                              Navigator.of(context).pushNamed(
                                '/Pay_Success',
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('정보를 다시 확인해주세요.'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          child: const Text('결제',style: TextStyle(fontSize:22,)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300,40),
                              backgroundColor: Colors.black
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.check),
                            Text(' 나의 카드와 정보 ',textAlign: TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('image/card_info.png',width:200,height: 120,fit:BoxFit.contain),
                        Text('카드 비밀번호 : 1234',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),

                  ],
                ),
              )



            ],
          )

      ),
      bottomNavigationBar: Container(
        height: 150, // 고정된 하단 컨테이너 높이
        color: Colors.grey[400],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 2,left: 10),
              child: Text('도움말',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10,bottom: 1),
                child: Text('화면 하단의 <나의 카드와 정보>를 보고 \n카드 정보를 입력해 결제 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('조언 : VALID 는 유효기간(월/년) 입니다',style: TextStyle(fontSize: 18),)
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

class Pay_Success extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('축하드립니다\n결제에 성공하였습니다!',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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