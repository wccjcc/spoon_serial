import 'package:flutter/material.dart';

void main() {
  runApp(SelectEnd());
}

class SelectEnd extends StatelessWidget {
  const SelectEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('3. 도착지 선택하기',
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
                child: Image.asset('image/map_red.png'),
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
                          Image.asset('image/magnifier.png',
                            height: 25.0,
                          ),
                          SizedBox(width: 20.0,),
                          Text('school',
                            style: TextStyle(
                              fontSize: 25.0,
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
                        Navigator.of(context).pushNamed('/Mob_ArriveInput');
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1),
                child: Text('클릭하여 도착지를 검색해주세요',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.redAccent),textAlign: TextAlign.left,),
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
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 150, // 고정된 하단 컨테이너 높이
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
                child: Text('\'어디로 갈까요?\' 부분을 눌러 \n도착지를 검색할 수 있습니다',style: TextStyle(fontSize: 18),)
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