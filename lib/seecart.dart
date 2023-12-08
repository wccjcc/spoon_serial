import 'package:flutter/material.dart';

void main() {
  runApp(SeeCart());
}

class SeeCart extends StatelessWidget {
  const SeeCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('6. 장바구니 보기',
          style: TextStyle(
              color: Colors.white,
              //fontSize: 25.0,
              fontWeight: FontWeight.w700
          ),
        ),
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

                  child: Text('메뉴',
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

                  child: Text('정보',
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

                  child: Text('리뷰',
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
          Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                    child: Image.asset('image/food.png',
                      height: 84.0,
                      width: 84.0,
                    ),
                  ),

                  SizedBox(width: 70.0,),

                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text('꿔바로우',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        SizedBox(height: 7.0,),

                        Container(
                          child: Text('가격 10,000원',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
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


          Divider(height: 1.0,),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                child: Image.asset('image/food.png',
                  height: 84.0,
                  width: 84.0,
                ),
              ),

              SizedBox(width: 70.0,),

              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text('마라탕',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    SizedBox(height: 7.0,),

                    Container(
                      child: Text('가격 15,000원',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Divider(height: 1.0,),

          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                  child: Image.asset('image/food.png',
                    height: 84.0,
                    width: 84.0,
                  ),
                ),

                SizedBox(width: 70.0,),

                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text('중화볶음밥',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(height: 7.0,),

                      Container(
                        child: Text('가격 20,000원',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 0.0,),
            child: Text('장바구니 보기를 눌러주세요',
              style: TextStyle(
                fontSize: 18.5,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:10),
            child:ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/Delivery_Order');

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('장바구니 보기',style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),

                  ],
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200,50),
                    maximumSize: Size(350,50),
                    backgroundColor: Colors.cyan
                )
            ),
          ),


          //SizedBox(height: 2.0,),


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
                child: Text('이 화면에서는 메뉴를 더 추가하거나 메뉴를 담아놓은 장바구니로 이동할 수 있습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('\'장바구니 보기\'버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
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