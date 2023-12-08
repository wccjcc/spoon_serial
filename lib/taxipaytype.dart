import 'package:flutter/material.dart';

void main() {
  runApp(TaxiPayType());
}

class TaxiPayType extends StatelessWidget {
  const TaxiPayType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('5. 결제 방법 선택하기',
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
          Container(
            height: 287.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text('결제 수단',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 40.0, top: 50.0),
                      child: Text('1.직접 결제를 선택해주세요',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
                

                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 180.0,
                            width: 380.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: Border.all(
                                  width: 5.0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(16.0,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Positioned(
                      left: 120.0,
                      top: -20.0,
                      child: Image.asset('image/creditcard.png'),
                      height: 180.0,
                    ),

                    Positioned(
                        left: 160.0,
                        top: 130.0,
                        child: Container(
                          child: Text('직접 결제',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            height: 220.0,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffD3D3D3),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text('할인 내역',
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20.0, top: 1.0,bottom: 10),
                  child: Text('예상 결제 금액           3,456원',
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10.0,),
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xff696969),
                          ),
                          borderRadius: BorderRadius.circular(
                            16.0,
                          )
                        ),
                        child: Padding(
                          padding:EdgeInsets.only(left: 48.0, top: 3.0, bottom: 3.0,),
                            child: Text('취소',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),

                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/Mob_CallTaxi');
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10.0),
                          width: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(
                                width: 5.0,
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(
                                16.0,
                              )
                          ),
                          child: Padding(
                            padding:EdgeInsets.only(left: 26.0, top: 3.0, bottom: 3.0,),
                            child: Text('적용하기',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 180.0, top: 1.0),
                  child: Text('2.적용하기 버튼을 눌러주세요',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
      bottomNavigationBar: Container(
        height: 165, // 고정된 하단 컨테이너 높이
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
                child: Text('직접결제를 통해 \n가지고 계신 카드로 결제할 수 있습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('직접결제를 선택 후 적용하기 버튼을 눌러주세요',style: TextStyle(fontSize: 18),)
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