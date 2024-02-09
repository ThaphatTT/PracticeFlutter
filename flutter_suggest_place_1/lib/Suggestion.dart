import 'package:flutter/material.dart';

class SuggestionPlace extends StatelessWidget{
  const SuggestionPlace({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            'img/t-04-Bangkok-to-Samut-Prakan-‘Yellow-Line-faces-slow-start-on-first-day-of-fare-collection.jpg',
            ),
        ),
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
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'สิ่งอำนวยความสะดวก',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'โดยบริเวณรอบเมืองโบราณนั้นมี โรงแรม และ ร้านอาหาร พร้อมกับ สถานที่ท่องเที่ยวพร้อมบริการมากมาย',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            '1.ที่พัก',
            style : TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'มีโรงแรมและที่พักต่างๆ ในเมืองโบราณสมุทรปราการและรอบบริเวณเมืองโบราณที่สามารถเดินทางโดยใช้รถประจำทางได้ และ มีโรงแรมที่มีระดับมาตรฐานและระดับหลายราคา',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            '2.ร้านอาหาร',
            style : TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'มีร้านอาหารท้องถิ่นและร้านอาหารสากลที่บริเวณใกล้เคียงและบริเวณในเมืองโบราณ ทำให้คุณสามารถสนุกสนานกับการลิ้มลองอาหารท้องถิ่น',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            '3.สถานที่ท่องเที่ยว',
            style : TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            'มืองโบราณสมุทรปราการมีมรดกทางประวัติศาสตร์สำคัญ เช่น พระมหาธาตุยานนาค (พระบรมราชวรวิหารทอง), พระราชวังสระบุรี, และพิพิธภัณฑ์โบราณสมุทรปราการ และรอบนอกก็ยังมีสถาที่ท่องเที่ยวอีกมากมาย',
            style : TextStyle(
              fontSize: 20.0
            )
            ),
        ),
      ],
    ),
    );
  }
}