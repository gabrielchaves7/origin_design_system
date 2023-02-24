import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Widget that loads the svg logo.
class OriginFlipCard extends StatelessWidget {
  ///Creates an OriginFlipCard
  const OriginFlipCard({
    required this.front,
    required this.back,
    required this.controller,
    this.flipOnTouch = false,
    super.key,
  });

  /// The widget to be rendered in the front of the card
  final Widget front;

  /// The widget to be rendered in the back of the card
  final Widget back;

  /// The flip card controller to control the card
  final FlipCardController controller;

  /// Should flip the card when its tapped
  final bool flipOnTouch;

  @override
  Widget build(Object context) {
    return FlipCard(
      controller: controller,
      front: front,
      back: back,
      flipOnTouch: flipOnTouch,
    );
  }
}
