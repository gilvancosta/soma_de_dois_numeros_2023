import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_numeros_2023/core/utls/inherited_operating.dart';
import 'package:soma_de_dois_numeros_2023/initialization/start_material_application.dart';
import 'package:soma_de_dois_numeros_2023/models/operating_model.dart';
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

  runApp(InheritedOperating(
    operating: OperatingModel(),
    child: const StartMaterialApplication(),
  ));


/*   if (Platform.isIOS) {
    runApp(const StartCupertinoApplication());
  } else if (Platform.isAndroid) {
    runApp(const StartMaterialApplication());
  } */
}
