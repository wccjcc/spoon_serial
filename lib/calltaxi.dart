import 'package:flutter/material.dart';

void main() {
  runApp(CallTaxi());
}

class CallTaxi extends StatelessWidget {
  const CallTaxi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('6. 택시 호출하기',
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
                height: 310.0,
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
                height: 147.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 30.0,),

                          Column(
                            children: [
                              Text('일반 호출',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Text('직접 결제',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                            ],
                          ),

                          SizedBox(width: 50.0,),

                          Column(
                            children: [
                              Text('예상 3,456원~',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Text('예상 10분',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
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
                        Navigator.of(context).pushNamed('/Mob_Finish');
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            width: 3.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding:EdgeInsets.only(left: 110.0, top: 3.0, bottom: 3.0,),
                          child: Text('호출하기',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 1.0),
                      child: Text('택시를 호출해주세요',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
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
              padding: EdgeInsets.only(top: 10,bottom: 5,left: 10),
              child: Text('도움말',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('출발지, 목적지, 택시종류, 결제수단을 \n모두 결정하였습니다',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('호출하기를 눌러 택시를 최종호출해주세요',style: TextStyle(fontSize: 18),)
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