// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:soma_de_dois_numeros_2023/models/operating_model.dart';

class InheritedOperating extends InheritedWidget {
   OperatingModel operating;
   InheritedOperating({
    super.key,
    required this.operating,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedOperating oldWidget) {
    return (
              operating.first != oldWidget.operating.first || 
              operating.second != oldWidget.operating.second
            );
  }

  static InheritedOperating of(BuildContext context) {
    var inheritedOperating = context.dependOnInheritedWidgetOfExactType<InheritedOperating>();
    assert(inheritedOperating != null, 'No UserModel found in context');
    return inheritedOperating!;
  }



}
