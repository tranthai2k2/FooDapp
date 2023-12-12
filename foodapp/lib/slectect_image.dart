// import 'dart:html';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:foodapp/common/app_colors.dart';
// import 'package:foodapp/common/app_text_style.dart';
// import 'package:foodapp/configs/app_configs.dart';
// import 'package:foodapp/utils/os_util.dart';
// import 'package:foodapp/widgets/app_button.dart';
// import 'package:foodapp/widgets/select_image_widget.dart';
// // // import 'package:foodapp/payment_method.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:foodapp/common/app_colors.dart';
// // import 'package:foodapp/common/app_text_style.dart';
// // import 'package:foodapp/widgets/app_button.dart';
// // import 'package:foodapp/widgets/select_image_widget.dart';

// class SelectedImage extends StatefulWidget {
//   const SelectedImage({Key? key}) : super(key: key);

//   @override
//   State<SelectedImage> createState() => _SelectedImageState();
// }

// class _SelectedImageState extends State<SelectedImage> {
//   File? imageSelected;
//   File? fileSelected;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text(widget.title),
//       // ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 16,
//           ),
//           child: Column(
//             children: <Widget>[
//               const SizedBox(height: 20),
//               AppButton(
//                 title: "Chọn ảnh",
//                 textStyle: AppTextStyle.primaryS18W700,
//                 backgroundColor: AppColors.colorPrimary,
//                 cornerRadius: 8,
//                 onPressed: () {
//                   showModalBottomSheet(
//                     isDismissible: false,
//                     context: context,
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.vertical(
//                         top: Radius.circular(20),
//                       ),
//                     ),
//                     builder: (BuildContext context) {
//                       return SelectUploadImage(
//                         takePhotoTitle: "Chụp ảnh",
//                         choosePhotoTile: "Chọn từ thư viện",
//                         cancelTitle: "Hủy",
//                         onSubmitImage: (files) {
//                           setState(() {
//                             imageSelected = File(files.single.path);
//                           });
//                         },
//                       );
//                     },
//                   );
//                 },
//               ),
//               const SizedBox(height: 20),
//               AppButton(
//                 onPressed: () async {
//                   await pickFile();
//                 },
//                 title: "Chọn file",
//                 textStyle: AppTextStyle.primaryS18W700,
//                 backgroundColor: AppColors.colorPrimary,
//                 cornerRadius: 8,
//               ),
//               const SizedBox(height: 20),
//               if (imageSelected != null) ...[
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Image.file(imageSelected!),
//                 ),
//               ],
//               const SizedBox(height: 20),
//               if (fileSelected != null) ...[
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text(
//                     fileSelected!.path,
//                   ),
//                 ),
//               ],
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
