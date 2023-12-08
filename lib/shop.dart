import 'package:flutter/material.dart';

void main() {
  runApp(Shop());
}

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('2. 가게 선택하기',
          style: TextStyle(
              color: Colors.white,
              //fontSize: 25.0,
              fontWeight: FontWeight.w700
          ),),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      //스택 구조로 바꿔도 될듯 -> 디자인적으로 둥글게 만드려면
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            height: 65.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.cyan,



            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 65.0,
                  alignment: Alignment.center,

                  child: Text('전체',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: 65.0,
                  alignment: Alignment.center,

                  child: Text('배달',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 65.0,
                  alignment: Alignment.center,

                  child: Text('포장',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                  child: Image.asset('image/food.png',
                  height: 90.0,
                  width: 90.0,
                  ),
                ),

                SizedBox(width: 70.0,),

                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text('ㅇㅇ 가게',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                         ),
                        ),
                      ),

                      SizedBox(height: 7.0,),

                      Container(
                        child: Text('별점 4.5',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),

          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Delivery_Menu');
            },
            child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 5.0,
              ),
            ),

            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                  child: Image.asset('image/food.png',
                    height: 90.0,
                    width: 90.0,
                  ),
                ),

                SizedBox(width: 70.0,),

                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text('스푼 가게',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(height: 7.0,),

                      Container(
                        child: Text('별점 5.0',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
           ),
          ),


          Container(
            margin: EdgeInsets.only(top: 3.0,),
            child: Text('가게 \'스푼\'을 선택해주세요',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            ),
          ),

          //SizedBox(height: 1.0,),

          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                  child: Image.asset('image/food.png',
                    height: 90.0,
                    width: 90.0,
                  ),
                ),

                SizedBox(width: 70.0,),

                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text('ㅁㅁ 가게',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(height: 7.0,),

                      Container(
                        child: Text('별점 4.3',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 12.4,),


        ],
      ),
      bottomNavigationBar: Container(
        height: 200, // 고정된 하단 컨테이너 높이
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
                child: Text('\'스푼가게\'를 선택해주세요',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('이 화면에서는 검색한 메뉴를 파는 가게들의 목록을 보실 수 있습니다',style: TextStyle(fontSize: 18),)
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