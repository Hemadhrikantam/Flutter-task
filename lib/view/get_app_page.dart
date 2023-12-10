import 'package:fillrolltask/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GetAppPage extends StatelessWidget {
  const GetAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Installing..."))
        ],
      ),
    );
  }
}