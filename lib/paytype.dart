import 'package:flutter/material.dart';

void main() {
  runApp(PayType());
}

class PayType extends StatelessWidget {
  const PayType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('8. 결제하기',
          style: TextStyle(
              color: Colors.white,
              //fontSize: 25.0,
              fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 5.0),
                child: Text('주소',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w700,
                 ),
                ),
              ),

              Container(
                width: 380.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ' 주소를 입력하세요',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                      helperText: ' 1.입력 후 아래 칸에 전화번호를 입력하세요',
                      helperStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                      hintText: 'home',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(3),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10.0, top: 2.0,),
                child: Text('전화번호',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Container(
                width: 380.0,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ' 전화번호를 입력하세요',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                      helperText: ' 2.입력 후 아래에서 결제 수단을 선택하세요',
                      helperStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                      hintText: '01012345678',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(3),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10.0, top: 2.0,bottom: 5),
                child: Row(
                  children: [
                    Text('결제 수단',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(width: 25.0,),
                    
                    Text('3.직접 결제를 선택 후 결제하기를 누르세요',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('image/direct.png',
                        width: 85.0,
                      ),
                    ),
                    Text('직접 결제',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:5),
                child:Container(
    alignment: Alignment.center,
    child: ElevatedButton(

        onPressed: (){
          Navigator.of(context).pushNamed('/Delivery_Finish');

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('결제하기',style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),

          ],
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(200,50),
            maximumSize: Size(350,50),
            backgroundColor: Colors.cyan
        )
    ),
    ),
              ),
            ],
          ),


        ],
      ),
      bottomNavigationBar: Container(
        height: 180, // 고정된 하단 컨테이너 높이
        color: Colors.grey[400],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 5,left: 10),
              child: Text('도움말',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
            Padding(
                padding: EdgeInsets.only(left:10,bottom: 0),
                child: Text('이 화면에서는 음식을 받는 사람의 정보를 입력하고 결제 수단을 선택할 수 있습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('주소와 전화번호를 입력하고 결제수단을 선택한 후, 결제하기 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
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