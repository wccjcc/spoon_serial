import 'package:flutter/material.dart';

void main() {
  runApp(InCart());
}

class InCart extends StatelessWidget {
  const InCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('5. 장바구니 담기',
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
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            height: 110.0,
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
                        child: Text('메뉴 2',
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
                            fontSize: 25.0,
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

          Divider(thickness: 4.0, color: Colors.grey,),

          Container(
            height: 281.0,
            child: Column(
              children: [
                Container(
                  child: Text('맵기(옵션) 선택',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Divider(thickness: 2.0, color: Colors.grey,),

                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 47.0, top: 10.0, bottom: 10.0,),
                        child: Image.asset('image/radiobutton_off.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),

                      SizedBox(width: 70.0,),

                      Container(
                        child: Text('순한맛(옵션 1)',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(thickness: 1.0, color: Colors.grey,),

                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 47.0, top: 10.0, bottom: 10.0,),
                        child: Image.asset('image/radiobutton_off.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),

                      SizedBox(width: 70.0,),

                      Container(
                        child: Text('중간맛(옵션 2)',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(thickness: 1.0, color: Colors.grey,),

                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 45.0, top: 10.0, bottom: 10.0,),
                        child: Image.asset('image/radiobutton_on.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),

                      SizedBox(width: 70.0,),

                      Container(
                        child: Text('매운맛(옵션 3)',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10.0,),
                  child: Text('장바구니 담기를 눌러주세요',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),


          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Delivery_Seecart');
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(
                  color: Colors.red,
                  width: 5.0,
                ),
              ),
              child: Center(
                child: Text('장바구니 담기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
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