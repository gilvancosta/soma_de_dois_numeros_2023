import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_numeros_2023/core/widgets/hero_calculator_widget.dart';
import 'package:soma_de_dois_numeros_2023/modules/pages/first_value.dart';

class MaterialHomePage extends StatefulWidget {
  static const routeName = '/';

  const MaterialHomePage({Key? key}) : super(key: key);

  @override
  State<MaterialHomePage> createState() => _MaterialHomePageState();
}

class _MaterialHomePageState extends State<MaterialHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  _initAnimationAndAnimationController() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.repeat(
      reverse: true,
    );
  }

  @override
  void initState() {
    _initAnimationAndAnimationController();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  _pageTitle() {
    return Text(
      'App de soma de dois valores',
      style: GoogleFonts.aBeeZee(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.indigo,
      ),
      textAlign: TextAlign.center,
    );
  }

  _heroLogo() {
    return const Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: HeroCalculatorWidget(height: 300, width: 300),
      ),
    );
  }

  _floatActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FadeTransition(
          opacity: _animation as Animation<double>,
          child: const Text(
            'Comece por Aqui',
          ),
        ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _pageTitle(),
            _heroLogo(),
          ],
        ),
      ),
      floatingActionButton: _floatActionButton(),
    );
  }
}
