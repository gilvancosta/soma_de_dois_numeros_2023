import 'package:flutter/material.dart';
import 'package:soma_de_dois_numeros_2023/common/utls/app_router.dart';
import 'package:soma_de_dois_numeros_2023/modules/home/material_home_page.dart';

class StartMaterialApplication extends StatelessWidget {
  const StartMaterialApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soma de 2 Valores',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: const MaterialHomePage(),
      home: const MaterialHomePage(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
