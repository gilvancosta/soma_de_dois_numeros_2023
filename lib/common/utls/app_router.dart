import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:soma_de_dois_numeros_2023/modules/home/material_home_page.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/first_value.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/second_value_page.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/sum_result_page.dart';

const animationDuration = Duration(seconds: 1);

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MaterialHomePage.routeName:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.bottomToTop,
          child: const MaterialHomePage(),
        );
      case FirstValuePage.routeName:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.leftToRight,
          child: const FirstValuePage(),
        );
      case SecondValuePage.routeName:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.rightToLeft,
          child: SecondValuePage(
            firstValue: settings.arguments.toString(),
          ),
        );
      case SumResultPage.routeName:
        List<Object> arguments = settings.arguments as List<Object>;
        // print('arguments 0:  ${arguments[0].toString()}');
        // print('arguments 1:  ${arguments[1].toString()}');
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.rightToLeft,
          child: SumResultPage(
            firstValue: arguments[0].toString(),
            secondValue: arguments[1].toString(),
          ),
        );

      default:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.fade,
          child: const MaterialHomePage(),
        );
    }
  }

/*   static Route<dynamic> generateRoute(RouteSettings settings) {  
    switch (settings.name) {
     case MaterialHomePage.routeName:
        return PageTransition(
          const Duration(milliseconds: 1000),
          type: PageTransitionType.fade,
          child: const MaterialHomePage(),
        );
   
    }
  }
 */
}
