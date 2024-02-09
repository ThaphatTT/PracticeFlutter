import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  const DescriptionPlace({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin : EdgeInsets.all(10),
            child: Image.asset('img/P03006201_1.jpg'),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child:  Text(
            'History',
            style: TextStyle(fontSize: 40.0),
            ) ,
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
            'เมืองโบราณสมุทรปราการ (Ancient City of Samut Prakan) เป็นพื้นที่ทางประวัติศาสตร์ที่ตั้งอยู่ในจังหวัดสมุทรปราการ ใกล้กับกรุงเทพมหานคร (กรุงเทพฯ) ประเทศไทย ซึ่งมีพระมหาธาตุยานนาคหรือที่เรียกกันว่า "พระบรมราชวรวิหารทอง" เป็นส่วนหนึ่งของเมืองโบราณนี้ นอกจากนี้ยังมีองค์ประชาราชธาตุทั้งหลายและสถานที่สำคัญอื่นๆ ที่เป็นที่น่าสนใจสำหรับนักท่องเที่ยวที่สนใจประวัติศาสตร์และวัฒนธรรมไทยโบราณ',
            style: TextStyle(fontSize: 20.0),
          ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
            'Important History',
            style: TextStyle(fontSize: 40.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
            'พระมหาธาตุยานนาค(พระบรมราชวรวิหารทอง) : สร้างขึ้นในสมัยสมเด็จพระมหาจอมเกล้าเจ้าอยู่หัว (รัชกาลที่ 4) เพื่อรำลึกถึงพระราชสมภพและประทับของพระมหาธาตุยานนาคที่สำคัญโดยสร้างมาจากวัสดุทองคำจริงและมีโครงสร้างที่สวยงาม',
            style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
            'สมัยกรุงอยุธยา : เมืองโบราณสมุทรปราการมีบทบาททางการปกครองในสมัยกรุงอยุธยา (พ.ศ. 1350 - 1767) โดยเฉพาะในสมัยรัตนโกสินทร์ (สมเด็จพระนารายณ์มหาราช) ที่ระดมกำลังทหารในการป้องกันประเทศจากภัยภูมิภาค',
            style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
            'พระราชวังสระบุรี : สร้างในสมัยรัชกาลที่ 4 และเป็นที่ราบรื่นของกษัตริย์ทุกพระองค์ในสมัยนั้นมีอาคารประจำพระราชวังและพระที่นั่งที่สวยงาม',
            style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}