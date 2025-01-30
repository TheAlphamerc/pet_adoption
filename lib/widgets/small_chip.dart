import 'package:flutter/material.dart';
import 'package:pet_adoption/utils/extensions.dart';

class SmallChip extends StatelessWidget {
  const SmallChip({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: context.colorScheme.primary.withOpacity(.1),
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      label: Text(
        text,
        style: context.textTheme.bodySmall!.copyWith(
          color: context.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
