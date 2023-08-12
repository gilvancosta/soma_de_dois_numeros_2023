import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_numeros_2023/initialization/start_material_application.dart';
//import 'package:soma_de_dois_numeros_2023/modules/home/cupertino_home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  //runApp(const StartCupertinoApplication());

  runApp(const StartMaterialApplication());

/*   if (Platform.isIOS) {
    runApp(const StartCupertinoApplication());
  } else if (Platform.isAndroid) {
    runApp(const StartMaterialApplication());
  } */
}
