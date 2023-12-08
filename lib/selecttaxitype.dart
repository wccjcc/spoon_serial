import 'package:flutter/material.dart';

void main() {
  runApp(SelectTaxiType());
}

class SelectTaxiType extends StatelessWidget {
  const SelectTaxiType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('4. 택시 종류 선택하기',
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
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Stack(
            children: [
              SizedBox(
                height: 352.0,
                width: 411.0,
                child: Image.asset(
                  'image/map.png',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Positioned(
                left: 185.0,
                top: 150.0,
                child: Image.asset('image/map_red.png'),
                height: 45.0,
                width: 45.0,
              ),

              Positioned(
                left: 130.0,
                top: 110.0,
                child: Image.asset('image/map_blue.png'),
                height: 45.0,
                width: 45.0,
              ),
            ],
          ),



          Column(
            children: [
              Container(
                height: 105.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 30.0,),
                          Text('ㅇㅇ',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 90.0,),
                          Text('예상 1,234원~',
                            style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Text('예상 10분',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Mob_PayType');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 30.0,),
                            Text('일반 호출',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 35.0,),
                            Text('예상 3,456원~',
                              style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Text('예상 15분',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 180, // 고정된 하단 컨테이너 높이
        color: Colors.grey[400],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 0,left: 10),
              child: Text('도움말',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
            Padding(
                padding: EdgeInsets.only(top:10,left: 10,right: 10,bottom: 0),
                child: Text('이 화면에서는 예상 금액과 예상 시간을 확인 할 수 있습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('일반 택시를 부르기 위해 일반 호출을 선택해주세요',style: TextStyle(fontSize: 18),)
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