import 'package:flutter/material.dart';
import 'package:movie_recommendation_app_course/core/constants.dart';
import 'package:movie_recommendation_app_course/core/widgets/primary_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen(
      {Key? key, required this.onNextPage, required this.onPreviousPage})
      : super(key: key);

  final VoidCallback onNextPage;
  final VoidCallback onPreviousPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'Let\'s find some movies!',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Image.asset('images/undraw_horror_movie.png'),
            const Spacer(),
            PrimaryButton(onPressed: onNextPage, text: 'Get Started'),
            const SizedBox(height: kMediumSpacing),
          ],
        ),
      ),
    );
  }
}
