import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_numeros_2023/core/utls/inherited_operating.dart';
import 'package:soma_de_dois_numeros_2023/core/widgets/hero_calculator_widget.dart';

class SumResultPage extends StatelessWidget {
  static const routeName = '/sum';

  const SumResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int firstValue = int.parse(InheritedOperating.of(context).operating.first);
    int secondValue = int.parse(InheritedOperating.of(context).operating.second);
    int sumResult = firstValue + secondValue;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sum Result'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: HeroCalculatorWidget(height: 60, width: 60),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Resultado da Operação',
              style: GoogleFonts.roboto(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 20),
            Text('$firstValue + $secondValue = $sumResult ',
                style: GoogleFonts.abrilFatface(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[900],
                )),
            const SizedBox(height: 20),
            const HeroCalculatorWidget(height: 120, width: 120),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        },

        // onPressed: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const FirstValuePage()), (Route<dynamic> route) => false),
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
