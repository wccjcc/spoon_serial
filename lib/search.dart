import 'package:flutter/material.dart';


void main() {
  runApp(Search());
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('1. 메뉴 검색하기',
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
                      labelText: ' 메뉴를 입력하세요',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                      helperText: ' 메뉴 입력 후 검색을 누르세요',
                      helperStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                      ),
                      hintText: 'chicken',
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
                          '/Delivery_Shop',

                        );
                      },
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size(200,50),
                        minimumSize: Size(50,45),
                        backgroundColor: Colors.cyan,
                        side: BorderSide(color: Colors.cyan, width: 1), // 테두리 색상 및 두께 설정


                      ),
                      child: const Text('입력',style: TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.bold),)
                  )
              ),
            ],
          ),

          Expanded(child: Container(),),


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
                padding: EdgeInsets.all(10),
                child: Text('먹고싶은 메뉴를 검색창에 검색해보겠습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('메뉴를 입력한 후 검색 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
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