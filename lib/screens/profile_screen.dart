import 'package:flutter/material.dart';
import 'package:shop_smart/services/assets_manager.dart';

import '../widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.shoppingCart,
          ),
        ),
        title: const Text('Profile screen'),
      ),
      body: Column(
        children: const [
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: const TitlesTextWidget(label: "Please login to have  unlimited access"),
            ),
          ),
        ],
      ),
    );
  }
}
