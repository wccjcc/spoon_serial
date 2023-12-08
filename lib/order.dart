import 'package:flutter/material.dart';

void main() {
  runApp(Order());
}

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('7. 주문하기',
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
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            width: 380,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                )
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('마라탕',
                          style: TextStyle(
                            fontSize: 27.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(height: 7.0,),

                      Container(
                        child: Text('옵션: 매운맛',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(height: 7.0,),

                      Container(
                        child: Text('가격 10,000원',
                          style: TextStyle(
                            fontSize: 23.0,
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

          Divider(height: 30.0,),

          //SizedBox(height: 10.0,),

          Container(
            //width: MediaQuery.of(context).size.width,
            width: 300,
            height: 150,
            margin: EdgeInsets.only(bottom: 5.0,),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 3.0,
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*Container(
                  margin: EdgeInsets.all(30.0,),
                  child: Image.asset('image/plus.png'),
                  height: 75.0,
                  width: 75.0,
                ),*/
                Icon(Icons.add,size: 70,color: Colors.grey[500],),

                Container(
                  child: Text('메뉴 더 담기',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            //margin: EdgeInsets.only(top: 0.0,),
            child: Text('주문하기를 눌러주세요',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:10),
            child:ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/Delivery_PayType');

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('주문하기  ①',style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),

                  ],
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200,50),
                    maximumSize: Size(350,50),
                    backgroundColor: Colors.cyan
                )
            ),
          ),


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
                child: Text('이 화면에서는 최종적으로 주문할 음식을 \n확인할 수 있고,메뉴를 더 담을 수 있습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('주문하기 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
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