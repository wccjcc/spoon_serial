import 'package:flutter/material.dart';

void main() {
  runApp(SelectStart());
}

class SelectStart extends StatelessWidget {
  const SelectStart({Key? key}) : super(key: key);

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
                child: Image.asset('image/map_blue.png'),
                height: 45.0,
                width: 45.0,
              ),

              Positioned(
                bottom: 0,
                left: 60,
                child: Text(
                  '클릭하여 출발지를 검색해주세요',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Mob_DepartInput');
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
                            Image.asset('image/magnifier.png',
                              height: 25.0,
                            ),
                            SizedBox(width: 20.0,),
                            Text('어디서 출발할까요?',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 35.0,),
                          Image.asset('image/magnifier.png',
                            height: 25.0,
                          ),
                          SizedBox(width: 15.0,),
                          Text('어디로 갈까요?',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 210, // 고정된 하단 컨테이너 높이
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
                child: Text('어디서 출발할까요? 혹은 출발지라고 써진 부분을 누르면 어디서 출발할지 검색하고 정할 수 있습니다.',style: TextStyle(fontSize: 18),)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text('빨간색으로 표시된 부분을 눌러주세요',style: TextStyle(fontSize: 18),)
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