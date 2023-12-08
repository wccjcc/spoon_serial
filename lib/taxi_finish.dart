import 'package:flutter/material.dart';

void main() {
  runApp(Taxi_Finish());
}

class Taxi_Finish extends StatelessWidget {
  const Taxi_Finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        height: 800.0,
        width: 400.0,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              '축하드립니다! \n',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'OO 초등학교에서',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.green,
              ),
            ),
            Text(
              'ㅁㅁ 아파트까지',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.green,
              ),
            ),

            Text(
              '직접 결제로',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                color: Colors.green,
              ),
            ),

            Text(
              '택시 잡기에',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              '성공했습니다! \n',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:20),
              child:ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/second');
                  },
                  child: const Text('처음으로 돌아가기',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350,50),
                    backgroundColor: Colors.green[900],
                    shape: StadiumBorder(),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}