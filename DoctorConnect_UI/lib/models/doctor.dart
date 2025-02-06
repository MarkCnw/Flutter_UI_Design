import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;
  String bio;
  List<CalendarModel> calendar;
  List<TimeModel> time;
  DoctorModel({
    required this.name,
    required this.image,
    required this.imageBox,
    required this.specialties,
    required this.score,
    required this.bio,
    required this.calendar,
    required this.time
  });
  
  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];
    doctors.add(
      DoctorModel(
        name: 'Dr. Mate Yamada',
        image: 'assets/images/s1.jpg',
        imageBox: const Color(0xffFFA340).withOpacity(0.3),
        specialties: ['นักกินท่อมเฉพาะทาง','คิวจอยครึ่งชีวิต','นก2หัว'],
        score: 4.8,
        bio: 'Dr. Mate Yamada เป็นผู้เชี่ยวชาญด้านกระท่อม เขามีประสบการณ์กินท่อมมาเเล้วมากกว่า20ปี ',
        calendar: [
          CalendarModel(
            dayNumber: 14, 
            dayName: 'Sun',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15, 
            dayName: 'Mon',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16, 
            dayName: 'Tue',
            isSelected: true
          ),
          CalendarModel(
            dayNumber: 17, 
            dayName: 'Wed',
            isSelected: false
          )
        ],
        time: [
          TimeModel(
            time: '09:00 AM',
            isSelected: true
          ),
          TimeModel(
            time: '11:00 AM',
            isSelected: false
          ),
          TimeModel(
            time: '03:00 PM',
            isSelected: false
          )
        ]
      ),
    );
     doctors.add(
      DoctorModel(
        name: 'Dr. Sho Yamada',
        image: 'assets/images/s2.jpg',
        imageBox: const Color(0xff3CFFC4).withOpacity(0.3),
        specialties: ['ตำนานที่ยังมีลมหายใจ','Leader Gang','หัวขโมย'],
        score: 4.8,
        bio: 'Dr. Sho Yamada เป็นผู้เชี่ยวชาญด้านการขโมยเงินเพื่อน เเละด้านฟัน',
          calendar: [
          CalendarModel(
            dayNumber: 14, 
            dayName: 'ไม่มีตัง',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15, 
            dayName: 'ไม่มีตัง',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16, 
            dayName: 'ไม่มีตัง',
            isSelected: true
          ),
          CalendarModel(
            dayNumber: 17, 
            dayName: 'ไม่มีตัง',
            isSelected: false
          )
        ],
         time: [
          TimeModel(
            time: 'Free all day',
            isSelected: true
          ),
          TimeModel(
            time: 'Free all day',
            isSelected: false
          ),
          TimeModel(
            time: 'Free all day',
            isSelected: false
          )
        ]
      )
    );
    doctors.add(
      DoctorModel(
        name: 'Dr. Tung Yamada',
        image: 'assets/images/s3.jpg',
        imageBox: const Color(0xffFFA340).withOpacity(0.3),
        specialties: ['คองโก'],
        score: 4.8,
        bio: 'Dr. Tung Yamada เป็นผู้เชี่ยวชาญด้านการเรื้อน เขาอยู่วงการนี้มา5ปี เขารู้ดีกว่าใคร',
        calendar: [
          CalendarModel(
            dayNumber: 14, 
            dayName: 'Sun',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15, 
            dayName: 'Mon',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16, 
            dayName: 'Tue',
            isSelected: true
          ),
          CalendarModel(
            dayNumber: 17, 
            dayName: 'Wed',
            isSelected: false
          )
        ],
        time: [
          TimeModel(
            time: '09:00 AM',
            isSelected: true
          ),
          TimeModel(
            time: '11:00 AM',
            isSelected: false
          ),
          TimeModel(
            time: '03:00 PM',
            isSelected: false
          )
        ]
      ),
    );
    return doctors;
  }
}

class CalendarModel {
  final int dayNumber;
  final String dayName;
  bool isSelected;
  CalendarModel({
    required this.dayNumber, 
    required this.dayName,
    required this.isSelected
  });
}

class TimeModel {
  final String time;
  bool isSelected;
  TimeModel({
    required this.time,
    required this.isSelected
  });
}