import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/assets.dart';
import 'package:patientrecordmanagementapp/presentation/home_screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final int _numPages = 4;
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _buildPage(onboardingAsset1, "Managing records\nhas never been easier"),
              _buildPage(onboardingAsset2, "Access your records\nanywhere, anytime"),
              _buildPage(onboardingAsset3, "Easily find your\nmedical documents"),
              _buildPage(onboardingAsset4, "Simple, mobile\naccess to your data"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentPage != _numPages - 1)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text('Skip'),
                    ),

                  DotsIndicator(
                    dotsCount: _numPages,
                    position: _currentPage,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      color: Colors.grey,
                      activeColor:Theme.of(context).colorScheme.primary,
                      spacing: const EdgeInsets.symmetric(horizontal: 5),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  if (_currentPage == _numPages - 1)
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to dashboard or home screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text('Finish'),
                    ),
                  if (_currentPage != _numPages - 1)
                    IconButton(
                      onPressed: () {
                        _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                      },
                      icon: Icon(Icons.arrow_forward,color: Theme.of(context).colorScheme.primary,),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

  Widget _buildPage(String assetPath, String phrase) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
          ),

        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top:50),
            child: Text(
              phrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                color:Theme.of(context).colorScheme.primary,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

}