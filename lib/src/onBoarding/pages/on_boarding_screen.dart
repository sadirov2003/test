import 'package:flutter/material.dart';
import 'package:flutter_vpn_test_app/src/onBoarding/widgets/option_answer_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  int currentIndex = 0;

  final _screenWidgets = [const FirstOnBoardingScreenWidget()];

  @override
  Widget build(BuildContext context) {
    // 42 - это отступы
    final size = ((MediaQuery.of(context).size.width) - 42);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: index == 2 ? 0 : 5),
                      child: Container(
                        height: 4,
                        width: size / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: currentIndex == index
                              ? const LinearGradient(
                                  colors: [
                                    Color(0xff075BD2),
                                    Color(0xff62A3FF)
                                  ],
                                )
                              : null,
                          color: const Color(0xFFE5E5EA),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  onPageChanged: (int index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  controller: controller,
                  itemBuilder: (context, index) {
                    return _screenWidgets[index];
                  },
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(
                      colors: [Color(0xff075BD2), Color(0xff62A3FF)],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstOnBoardingScreenWidget extends StatelessWidget {
  const FirstOnBoardingScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'What’s your purpose\n of using VPN?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 27,
            color: Color(0xFF0F0F0F),
          ),
        ),
        SizedBox(height: 20),
        Column(
          children: [
            OptionAnswerWidget(
                urlIcon: 'assets/icons/Hide.png',
                title: 'Hide Browsing History'),
            SizedBox(height: 16),
            OptionAnswerWidget(
                urlIcon: 'assets/icons/SecureConversations.png',
                title: 'Secure Digital Conversations'),
            SizedBox(height: 16),
            OptionAnswerWidget(
                urlIcon: 'assets/icons/Encrypt.png',
                title: 'Secure Digital Conversations'),
            SizedBox(height: 16),
            OptionAnswerWidget(
                urlIcon: 'assets/icons/Ip.png',
                title: 'Secure Digital Conversations'),
          ],
        ),
      ],
    );
  }
}
