import 'package:flutter/material.dart';

class DateTimePage extends StatelessWidget {
  final DateTime selectedDate;

  DateTimePage({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTime Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Thanh trong tuần
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dayButton('Mon', selectedDate.weekday == 1),
              dayButton('Tue', selectedDate.weekday == 2),
              dayButton('Wed', selectedDate.weekday == 3),
              dayButton('Thu', selectedDate.weekday == 4),
              dayButton('Fri', selectedDate.weekday == 5),
              dayButton('Sat', selectedDate.weekday == 6, isWeekend: true),
              dayButton('Sun', selectedDate.weekday == 7, isWeekend: true),
            ],
          ),
          SizedBox(height: 20),
          // Khối hình chữ nhật hiển thị thời gian
          Container(
            width: 200,
            height: 100,
            color: Colors.purple,
            child: Center(
              child: Text(
                '${selectedDate.day}/${selectedDate.month}/${selectedDate.year} ${selectedDate.hour}:${selectedDate.minute}',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dayButton(String day, bool isSelected, {bool isWeekend = false}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.purple : (isWeekend ? Colors.grey : null),
      ),
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
