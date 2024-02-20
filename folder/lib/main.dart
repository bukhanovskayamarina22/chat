import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
  primary: Color(0xff3ced78),
  onPrimary: Color(0xff00521c),
  secondary: Color(0xffedf2f6),
  onSecondary: Color(0xff2b333e),
  tertiary: Color(0xff9db7cb),
  surface: Color(0xffffffff),
  onSurface: Color(0xff000000),
  onSurfaceVariant: Color(0xff5e7a90),
),
          textTheme: TextTheme(
  displayLarge: GoogleFonts.raleway(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 24.76 / 20,
  ),
  headlineLarge: GoogleFonts. raleway(
    fontWeight: FontWeight.w600,
    fontSize: 32,
    height: 39.2 / 32,
  ),
  headlineSmall: GoogleFonts. raleway(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    height: 18.38 / 15,
  ),
  bodyLarge: GoogleFonts. raleway(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 19.41 / 16,
  ),
  bodyMedium: GoogleFonts. raleway(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 16.98 / 14,
  ),
  labelLarge: GoogleFonts. raleway(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 14.56 / 12,
  ),
),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.light,
        home: const IconWidget());
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.only(left: 20, top: 14, right: 20, bottom: 44), 
      child: Row(
        children: [
          SecondaryContainer(
            width: 42,
            child: Transform.rotate(
              angle: 45 * math.pi / 180,
              child: IconWithSize24(icon: Icons.attach_file, color: Theme.of(context).colorScheme.onSecondary)),
          ),
        ],
      ),)
    );
  }
}

class SecondaryContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  const SecondaryContainer({
    super.key, this.child, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: child,
    );
  }
}

class IconWithSize24 extends StatelessWidget {
  final IconData icon;
  final Color color;
  const IconWithSize24({
    super.key, required this.icon, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 24,
      color: color
    );
  }
}