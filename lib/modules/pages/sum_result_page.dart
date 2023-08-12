import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SumResultPage extends StatelessWidget {
  static const routeName = '/sum';
  final String firstValue;
  final String secondValue;

  const SumResultPage({
    Key? key,
    required this.firstValue,
    required this.secondValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int firstValue = int.parse(this.firstValue);
    int secondValue = int.parse(this.secondValue);
    int sumResult = firstValue + secondValue;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sum Result'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/calculator.png'),
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
            const Image(
              image: AssetImage('assets/images/calculator.png'),
              height: 120,
              width: 120,
            ),
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
