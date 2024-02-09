import 'package:flutter/material.dart';

class SuggestionPlace extends StatelessWidget{
  const SuggestionPlace({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'การเดินทาง',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'สามารถเดินทางโดยการใช้รถยนต์ รถไฟฟ้า และรถประจำทางได้',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            '1.รถยนต์',
            style : TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'การเดินทางด้วยรถยนต์สามารถทำได้โดยใช้ถนนทางด่วน และมีทางขึ้น-ลงทางด่วนที่เชื่อมต่อกับกรุงเทพฯ และจังหวัดรอบๆมาถึงที่สมุทรปราการ',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            '2.รถไฟ',
            style : TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'ถ้าจะมายังเมืองโบราณสามารถลงได้สถานี BTS ที่อยู่ในจังหวัดสมุทรปราการและสามารถต่อรถประจำทางของจังหวัดมายังเมืองโบราณได้',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            '3.รถประจำทาง',
            style : TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'มีบริการรถประจำทางจากกรุงเทพฯ และจังหวัดรอบๆ ที่มีเส้นทางผ่านสมุทรปราการ และขึ้นรถประจำสมุทรปราการมายังเมืองโบราณ',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
      ],
    );
  }
}