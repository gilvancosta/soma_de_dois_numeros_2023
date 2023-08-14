// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_numeros_2023/core/functions/common_functions.dart';
import 'package:soma_de_dois_numeros_2023/core/utls/inherited_operating.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/second_value_page.dart';

class FirstValuePage extends StatelessWidget {
  static const routeName = '/first';
  const FirstValuePage({super.key});

  @override
  Widget build(BuildContext context) {
    String firstValue = '0';

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Value'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/calculator.png'),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: TextField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.calculate),
                labelText: 'First Value',
                hintText: 'Informe o Primeiro valor',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              onChanged: (value) => firstValue = value,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('firstValue: $firstValue');

          if (firstValue.isNotEmpty && firstValue != '0') {
            // Navigator.pushNamed(context, SecondValuePage.routeName); // opção 1
            InheritedOperating.of(context).operating.first = firstValue;

            Navigator.of(context).pushNamed(SecondValuePage.routeName); // o

        //    Navigator.of(context).pushNamed(SecondValuePage.routeName, arguments: firstValue); // opção 2

/*             Navigator.push(
              context,
              PageTransition(
                duration: const Duration(milliseconds: 1000),
                type: PageTransitionType.fade,
                isIos: true,
                child: SecondValuePage(firstValue: firstValue),
              ),
            );
 */
/*             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SecondValuePage(firstValue : firstValue)),
            ); */
          } else {
            valueRequiredDialog(context: context);

            /*       ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Informe o Primeiro Valor'),
                duration: Duration(seconds: 2),
              ),
            ); */
          }
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
