import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/consts/app_colors.dart';
import 'package:shop_smart/provider/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello word'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Hello word'),
            ),
            SwitchListTile(
                title: Text(themeProvider.getIsDarkTheme ? 'Dark Mode' : 'Light Mode'),
                value: themeProvider.getIsDarkTheme,
                onChanged: (value) {
                  themeProvider.setDarkTheme(themeValue: value);
                })
          ],
        ),
      ),
    );
  }
}
