import 'package:flutter/material.dart';

// Enum for the different avatar gradient colors
enum Gradients { green, orange, blue }

class AvatarWithGradient extends StatelessWidget {
  static const double avatarDiameter = 50;

  // Static constants for the start and end colors of each gradient
  static const Color greenStart = Color(0xff1fdb5f);
  static const Color greenEnd = Color(0xff31c764);

  static const Color orangeStart = Color(0xfff66700);
  static const Color orangeEnd = Color(0xffed3900);

  static const Color blueStart = Color(0xff00acf6);
  static const Color blueEnd = Color(0xff006ded);

  const AvatarWithGradient(
      {Key? key, required this.avatarGradient, required this.avatarText})
      : super(key: key);

  // Gradient type property
  final Gradients avatarGradient;
  final String avatarText;

  @override
  Widget build(BuildContext context) {
 
    return Container(
      width: avatarDiameter,
      height: avatarDiameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: _getGradient(),
      ),
      child: Center(
        child: Text(
          avatarText,
          style : Theme.of(context).textTheme.displayLarge!
              .copyWith(color : Theme.of(context).colorScheme.surface,),
        ),
      ),
    );
  }

  LinearGradient _getGradient() {
    switch (avatarGradient) {
      // Return green gradient
      case Gradients.green:
        return const LinearGradient(
          colors: [greenStart, greenEnd],
          stops: [0.0, 1.0],
        );
      // Return orange gradient
      case Gradients.orange:
        return const LinearGradient(
          colors: [orangeStart, orangeEnd],
          stops: [0.0, 1.0],
        );
      // Return blue gradient
      case Gradients.blue:
        return const LinearGradient(
          colors: [blueStart, blueEnd],
          stops: [0.0, 1.0],
        );
      default:
        // Defaults to the green gradient
        return const LinearGradient(
          colors: [greenStart, greenEnd],
          stops: [0.0, 1.0],
        );
    }
  }
}
