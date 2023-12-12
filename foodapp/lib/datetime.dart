// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'utils/colors_utils.dart';
// import 'utils/date_utils.dart' as date_util;

// class DateTime extends StatefulWidget {
//   final String title;
//   const DateTime({Key? key, required this.title}) : super(key: key);

//   @override
//   _Screen2State createState() => _Screen2State();
// }

// class _Screen2State extends State<DateTime> {
//   double width = 0.0;
//   double height = 0.0;
//   late ScrollController scrollController;
//   List<DateTime> currentMonthList = List.empty();
//   DateTime currentDateTime = DateTime.now();
//   List<String> todos = <String>[];
//   TextEditingController controller = TextEditingController();

//   @override
//   void initState() {
//     currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
//     currentMonthList.sort((a, b) => a.day.compareTo(b.day));
//     currentMonthList = currentMonthList.toSet().toList();
//     scrollController =
//         ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
//     super.initState();
//   }

//   Widget backgroundView() {
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//       ),
//     );
//   }

//   Widget titleView() {
//     return const Padding(
//       padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
//       child: Text(
//         'BOOK A TABLE',
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 16,
//           fontFamily: 'Roboto',
//           fontWeight: FontWeight.w500,
//           height: 0,
//         ),
//       ),
//     );
//   }

//   Widget hrizontalCapsuleListView() {
//     return Container(
//       width: double.infinity,
//       height: 60,
//       child: ListView.builder(
//         controller: scrollController,
//         scrollDirection: Axis.horizontal,
//         physics: const ClampingScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: currentMonthList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return capsuleView(index);
//         },
//       ),
//     );
//   }

//   Widget capsuleView(int index) {
//     return Padding(
//         padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               currentDateTime = currentMonthList[index];
//             });
//           },
//           child: Container(
//             width: 18,
//             height: 51,
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     date_util
//                         .DateUtils.weekdays[currentMonthList[index].weekday - 1]
//                         .substring(0, 1), // Lấy chữ cái đầu
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontFamily: 'Roboto',
//                       fontWeight: FontWeight.w500,
//                       height: 0,
//                       color:
//                           (currentMonthList[index].day != currentDateTime.day)
//                               ? HexColor("465876")
//                               : HexColor("#DB166E"),
//                     ),
//                   ),
//                   Text(
//                     currentMonthList[index].day.toString(),
//                     style: TextStyle(
//                         fontSize: 15,
//                         fontFamily: 'Roboto',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                         color:
//                             (currentMonthList[index].day != currentDateTime.day)
//                                 ? HexColor("465876")
//                                 : HexColor("#DB166E")
//                                 ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }

//   Widget topView() {
//     return Container(
//       height: 150,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         color: Colors.green,
//       ),
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             titleView(),
//             hrizontalCapsuleListView(),
//           ]),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[backgroundView(), topView()],
//       ),
//     );
//   }
// }
