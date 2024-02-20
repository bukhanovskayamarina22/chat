import 'package:flutter/widgets.dart';

class MessageTail extends StatelessWidget {
  const MessageTail({
    super.key,
    this.invert = false,
    required this.color,
  });

// Flag to indicate if the drawing should be inverted.
// Should be set to true if the sender of the message is not the current user
  final bool invert;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(10, 21),
// Pass custom painter to draw on canvas
      painter: RPSCustomPainter(
        invert: invert,
        color: color,
      ),
    );
  }
}

// Custom painter to draw message tail shape
class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({required this.color, required this.invert});

// Color property
  final Color color;

// Invert flag
  final bool invert;

  @override
// Paint method - draws shape on canvas
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();

// Add points to create tail shape
    path_0.moveTo(0, 0);
    path_0.cubicTo(0, 18.6667, 10, 21, 10, 21);
    path_0.lineTo(0, 21);
    path_0.lineTo(0, 0);
    path_0.close();

// Paint to fill shape
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;

    paint0Fill.color = color;

// Invert canvas if flag is true
    if (invert) {
      canvas.scale(-1, 1);
      canvas.translate(-size.width, 0);
    }

// Draw path
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
