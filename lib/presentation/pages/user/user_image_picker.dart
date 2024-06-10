import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key, required this.onPickImage});

  final void Function(File pickedImage) onPickImage;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickedImageFile;

  void _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxWidth: 150,
    );
    if (pickedImage == null) {
      return;
    }
    setState(() {
      _pickedImageFile = File(pickedImage.path);
    });

    widget.onPickImage(_pickedImageFile!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _pickImage,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFDCAE96),
            foregroundImage:
                _pickedImageFile != null ? FileImage(_pickedImageFile!) : null,
          ),
        ),
        TextButton.icon(
          onPressed: _pickImage,
          label: Text('사진을 찍어주세요.', style: TextStyle(color: Color(0xFFDCAE96))),
          icon: Icon(Icons.image, color: Color(0xFFDCAE96)),
        )
      ],
    );
  }
}
