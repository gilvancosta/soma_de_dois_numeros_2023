import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/first_value.dart';


class MaterialHomePage extends StatelessWidget {
  static const routeName = '/';

  const MaterialHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'App de soma de dois valores',
              style: GoogleFonts.aBeeZee(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              textAlign: TextAlign.center,
            ),
            const Image(
              image: AssetImage('assets/images/calculator.png'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Comece por Aqui'),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              // Navigator.pushNamed(context, FirstValuePage.routeName); // opção 1
              Navigator.of(context).pushNamed(FirstValuePage.routeName); // opção 2
            },
/*               Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const FirstValuePage(),
                  transitionDuration: const Duration(seconds: 1),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            }, */
/*             onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstValuePage()),
            ), */
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
