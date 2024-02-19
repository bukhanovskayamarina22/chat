import 'package:flutter/material.dart';
import 'package:test_assignment_chat/widgets/message_tail.dart';

class MessageCard extends StatelessWidget {
  // Constants for common values
  static const double bubbleMinHeight = 39.0;
  static const double bubbleMaxWidth = 282.0;

  static const double paddingHorizontal = 10.0;
  static const double paddingVertical = 8.0;

  // Calculates border radius based on message position
  final MessageBorderCalculator borderCalculator = MessageBorderCalculator();

  final String message;
  final String? imageURL;
  final String sendingTime;
  final bool isMyMessage;
  final bool isPreviousFromSameSender;
  final bool isNextFromSameSender;

  MessageCard({
    super.key,
    required this.isMyMessage,
    required this.isPreviousFromSameSender,
    required this.isNextFromSameSender,
    required this.message,
    this.imageURL,
    required this.sendingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      // Position: message on left or right
      mainAxisAlignment:
          isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        // If the sender of the message is not the current user and
        // the message is the last in a sequence of messages from this user
        // (next message is from the current user) - display a (inverted) tail.
        // If no - display an empty container with the same width as the tail (10px)
        !isMyMessage
            ? !isNextFromSameSender
                ? MessageTail(
                    invert: true,
                    color: Theme.of(context).colorScheme.secondary,
                  )
                : Container(
                    width: paddingHorizontal,
                  )
            : Container(
                width: 10,
              ),
        // Message bubble
        Container(
          constraints: const BoxConstraints(
            minHeight: bubbleMinHeight,
            maxWidth: bubbleMaxWidth,
          ),
          decoration: BoxDecoration(
            color: isMyMessage
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
            borderRadius: _getBorderRadius(),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: paddingVertical, horizontal: paddingHorizontal),
            child: Column(
              children: [
                LayoutBuilder(builder: (_, __) {
                  if(imageURL != null) {
                    return Image.network(imageURL!, width: 160, fit: BoxFit.contain,);
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        message,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // If the sender of the message is the current user and
        // the message is the last in a sequence of messages from this user
        // (next message is not from the current user) - display a tail.
        // If no - display an empty container with the same width as the tail (10px)
        isMyMessage
            ? !isNextFromSameSender
                ? MessageTail(
                    invert: false,
                    color: Theme.of(context).colorScheme.primary,
                  )
                : Container(
                    width: paddingVertical,
                  )
            : Container(
                width: paddingVertical,
              ),
      ],
    );
  }

  BorderRadius _getBorderRadius() {
    return borderCalculator.getBorderRadius(
        isMyMessage, isPreviousFromSameSender, isNextFromSameSender);
  }
}

class MessageBorderCalculator {
  static const Radius defaultRadius = Radius.circular(23);
  static const Radius adjacentRadius = Radius.circular(6);
  static const Radius noRadius = Radius.circular(0);

  Radius getTopLeftRadius(bool isMyMessage, bool isPreviousFromSameSender) {
    if (isMyMessage) {
      return defaultRadius;
    } else {
      return isPreviousFromSameSender ? adjacentRadius : defaultRadius;
    }
  }

  Radius getTopRightRadius(bool isMyMessage, bool isPreviousFromSameSender) {
    if (isMyMessage) {
      return isPreviousFromSameSender ? adjacentRadius : defaultRadius;
    } else {
      return defaultRadius;
    }
  }

  Radius getBottomLeftRadius(bool isMyMessage, bool isNextFromSameSender) {
    if (isMyMessage) {
      return defaultRadius;
    } else {
      return isNextFromSameSender ? adjacentRadius : noRadius;
    }
  }

  Radius getBottomRightRadius(bool isMyMessage, bool isNextFromSameSender) {
    if (isMyMessage) {
      return isNextFromSameSender ? adjacentRadius : noRadius;
    } else {
      return defaultRadius;
    }
  }

  BorderRadius getBorderRadius(bool isMyMessage, bool isPreviousFromSameSender,
      bool isNextFromSameSender) {
    return BorderRadius.only(
        topLeft: getTopLeftRadius(isMyMessage, isPreviousFromSameSender),
        topRight: getTopRightRadius(isMyMessage, isPreviousFromSameSender),
        bottomLeft: getBottomLeftRadius(isMyMessage, isNextFromSameSender),
        bottomRight: getBottomRightRadius(isMyMessage, isNextFromSameSender));
  }
}
