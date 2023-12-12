import 'dart:io';
import 'package:chat_app_demo/commons/app_colors.dart';
import 'package:chat_app_demo/commons/app_text_styles.dart';
import 'package:chat_app_demo/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class SelectUploadImage extends StatefulWidget {
  final String? takePhotoTitle;
  final String? choosePhotoTile;
  final String? cancelTitle;
  final Function(List<File>)? onSubmitImage;
  final Function? onErrorImage;

  const SelectUploadImage({
    Key? key,
    this.cancelTitle,
    this.choosePhotoTile,
    this.takePhotoTitle,
    this.onSubmitImage,
    this.onErrorImage,
  }) : super(key: key);

  @override
  State<SelectUploadImage> createState() => _SelectUploadImageState();
}

class _SelectUploadImageState extends State<SelectUploadImage> {
  final List<File> _images = [];
  final picker = ImagePicker();

  // final picker = ImagePicker();
  late PermissionStatus permissionCamera;
  late PermissionStatus permissionGallery;

  @override
  void initState() {
    getAccessPermission();
    super.initState();
  }

  void getAccessPermission() async {
    permissionCamera = await Permission.camera.status;
    permissionGallery = await Permission.photos.status;
  }

  Future getImageFromCamera() async {
    try {
      FocusScope.of(context).unfocus();
      XFile? imageFile = await picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.rear,
      );
      if (imageFile != null) {
        await processImage(imageFile.path, 0);
        widget.onSubmitImage?.call(_images);
      }
    } catch (error) {
      debugPrint("$error");
    }
  }

  Future<void> getImageFromGallery() async {
    try {
      FocusScope.of(context).unfocus();
      List<XFile>? imageFile = [];
      final listImageSelected = await picker.pickMultiImage();
      imageFile.addAll(listImageSelected);

      if (imageFile.isNotEmpty) {
        if (imageFile.length <= 10) {
          for (int i = 0; i < imageFile.length; i++) {
            await processImage(imageFile[i].path, i);
          }
          widget.onSubmitImage?.call(_images);
        } else {
          ///Handle show error
        }
      }
    } catch (error) {
      debugPrint("$error");
    }
  }

  Future<void> processImage(String path, int index) async {
    _images.add(File(path));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: Text(
                "Chọn ảnh",
                style: AppTextStyles.primaryS18SemiBold.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            PrimaryButton(
              title: widget.takePhotoTitle,
              padding: EdgeInsets.zero,
              onTap: () async {
                if (permissionCamera != PermissionStatus.denied) {
                  if (permissionCamera == PermissionStatus.permanentlyDenied) {
                    openAppSettings();
                  } else {
                    Navigator.of(context).pop();
                    await getImageFromCamera();
                  }
                } else {
                  final result = await Permission.camera.request();
                  if (result != PermissionStatus.denied) {
                    if (result == PermissionStatus.permanentlyDenied) {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                      openAppSettings();
                    } else {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                      await getImageFromCamera();
                    }
                  }
                  permissionCamera = await Permission.camera.status;
                }
              },
            ),
            const SizedBox(height: 8),
            PrimaryButton(
              title: widget.choosePhotoTile,
              padding: EdgeInsets.zero,
              onTap: () async {
                if (permissionGallery != PermissionStatus.denied) {
                  if (permissionGallery == PermissionStatus.permanentlyDenied) {
                    openAppSettings();
                  } else {
                    Navigator.of(context).pop();
                    await getImageFromGallery();
                  }
                } else {
                  final result = await Permission.photos.request();
                  if (result != PermissionStatus.denied) {
                    if (result == PermissionStatus.permanentlyDenied) {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                      openAppSettings();
                    } else {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                      await getImageFromGallery();
                    }
                  }
                  permissionGallery = await Permission.photos.status;
                }
              },
            ),
            const SizedBox(height: 8),
            PrimaryButton(
              padding: EdgeInsets.zero,
              title: widget.cancelTitle,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
