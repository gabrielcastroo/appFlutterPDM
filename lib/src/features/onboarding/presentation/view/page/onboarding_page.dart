import 'package:aider/src/features/onboarding/presentation/view/widget/build_page.dart';
import 'package:flutter/material.dart';
//import 'package:localization/localization.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 2);
        },
        children: [
          buildPage(context,
              urlImage: 'lib/assets/images/onboarding_1.png',
              title: 'Criando um mundo melhor',
              subtitle: 'Com a aider, você pode mudar a vida das pessoas. Nós estamos aqui para te ajudar a encontrá-las'),
          buildPage(
            context,
              urlImage: 'lib/assets/images/onboarding_2.png',
              title: 'O poder está em suas mãos',
              subtitle: 'Conecte-se com organizações que, assim como você, querem ajudar a construir um mundo melhor'),
          buildPage(
            context,
              isLastPage: isLastPage,
              urlImage: 'lib/assets/images/onboarding_3.png',
              title: 'Faça a diferença',
              subtitle: 'Crie sua conta agora, e veja um universo de possibilidades onde sua ajuda faz a diferença.Vamos lá?'),
        ],
      ),
      bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 32,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.green,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut),
                ),
              ),
              
            ],
          )),
    );
  }
}