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
          IconButton(onPressed: (){Navigator.of(context).pushNamed('/TermQuiz1result');}, icon: Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('최종 결제',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: Column(
                            children: [
                              Container(),
                              OutlinedButton(onPressed: (){}, child: Text('oo페이')),
                            ],
                          ),
                        ),
                        Container(
                          width:2,
                          height: 50,
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          child: OutlinedButton(onPressed: (){Navigator.of(context).pushNamed('/Pay_Input');}, child: Text('신용카드')),
                        ),
                        Container(
                          width:2,
                          height: 50,
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          child: OutlinedButton(onPressed: (){}, child: Text('ㅁㅁ결제')),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(onPressed: (){}, child: Text('내통장결제')),
                        OutlinedButton(onPressed: (){}, child: Text('휴대폰결제')),
                        OutlinedButton(onPressed: (){}, child: Text('ㅇㅇ페이'))
                      ],
                    ),
                    Text('<나의 카드와 정보>'),
                    Row(
                      children: [
                        Image.asset('image/card_info.png',width:200,height: 100,fit:BoxFit.contain),
                        Text('카드 비밀번호 : 1234'),
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
        title: Text("결제"),
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
                  child: Text('최종 결제')
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
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
                      padding: EdgeInsets.all(10),
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
                      padding: EdgeInsets.all(10),
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
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: TextField(
                            controller: _pwController,
                            decoration: InputDecoration(
                                hintText: '비밀번호 입력(앞 2자리)'
                            ),
                          )
                      ),
                    ),

                    Text('<나의 카드와 정보>'),
                    Row(
                      children: [
                        Image.asset('image/card_info.png',width:200,height: 100,fit:BoxFit.contain),
                        Text('카드 비밀번호 : 1234'),
                      ],
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
                          child: const Text('결제',style: TextStyle(fontSize:25)),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300,30),
                              backgroundColor: Colors.green
                          )
                      ),
                    ),

                  ],
                ),
              )



            ],
          )

      ),
      bottomNavigationBar: Container(
        height: 200, // 고정된 하단 컨테이너 높이
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
                  child: Text('결제에 성공하였습니다!',style: TextStyle(fontSize:30),),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: (){Navigator.of(context).pushNamed('/second');},
                      child: const Text('처음으로 돌아가기',style: TextStyle(fontSize:20),),
                    )
                ),

              ],
            )
        )
    );
  }
}