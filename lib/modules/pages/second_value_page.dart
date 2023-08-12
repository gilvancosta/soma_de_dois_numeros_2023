import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:soma_de_dois_numeros_2023/common/functions/common_functions.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/sum_result_page.dart';

class SecondValuePage extends StatelessWidget {
  static const routeName = '/second';
  final String firstValue;
  const SecondValuePage({
    Key? key,
    required this.firstValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String secondValue = '0';
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Value '),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/calculator.png'),
            ),
          ],
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'First Value $firstValue',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
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
                      labelText: 'Second Value',
                      hintText: 'Informe o Segundo valor',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    onChanged: (value) => secondValue = value,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            if (secondValue.isNotEmpty && secondValue != '0') {
              // Navigator.pushNamed(context, SumResultPage.routeName); // opção 1

              Navigator.of(context).pushNamed(SumResultPage.routeName, arguments: [firstValue, secondValue]); // opção 2

/*               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SumResultPage(firstValue: firstValue, secondValue: secondValue)),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('assets/images/calculator.png', height: 60, width: 60),
              const SizedBox(height: 10),
              const Text('Somar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ));
  }
}
