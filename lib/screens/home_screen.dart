import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/provider/theme_provider.dart';
import 'package:shop_smart/widgets/subtitle_text.dart';
import 'package:shop_smart/widgets/title_text.dart';

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
            const SubtitleTextWidget(label: "Hello"),
            TitlesTextWidget(label: "welcome to my app" * 10),
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
