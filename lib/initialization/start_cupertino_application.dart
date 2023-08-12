import 'package:flutter/cupertino.dart';
import 'package:soma_de_dois_numeros_2023/modules/home/material_home_page.dart';

class StartCupertinoApplication extends StatelessWidget {
  const StartCupertinoApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Cupertino Homepage',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: MaterialHomePage(),
    );
  }
}
