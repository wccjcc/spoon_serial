import 'package:flutter/material.dart';

void main() {
  runApp(SelectStartInput());
}

class SelectStartInput extends StatelessWidget {
  const SelectStartInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('2. 출발지 선택하기',
          style: TextStyle(
              color: Colors.white,
              //fontSize: 25.0,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0, right: 1),
                width: 300.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ' 장소를 입력하세요',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                      helperText: ' 장소 입력 후 검색을 누르세요',
                      helperStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                      ),
                      hintText: 'school',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(3),
                    ),
                  ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.all(1),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/Mob_Arrive',

                        );
                      },
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(200,50),
                        minimumSize: Size(50,45),
                        backgroundColor: Colors.grey[300],
                        side: BorderSide(color: Colors.black38, width: 1), // 테두리 색상 및 두께 설정


                      ),
                      child: const Text('입력',style: TextStyle(fontSize:18,color: Colors.black54,fontWeight: FontWeight.bold),)
                  )
              )
            ],
          ),

          Expanded(child: Container(),),

          /*Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,

            child: Align(
              alignment: Alignment.topCenter,
              child: Text('키오스크 이용법에 대한 설명',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),*/
        ],
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
                child: Text('\'장소를 입력하세요\' 부분을 눌러 \n출발지를 검색할 수 있습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('다 입력한 후엔 입력 버튼을 눌러 \n다음으로 넘어가주세요',style: TextStyle(fontSize: 18),)
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