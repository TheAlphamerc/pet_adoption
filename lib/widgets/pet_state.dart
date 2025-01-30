import 'package:flutter/material.dart';
import 'package:pet_adoption/utils/extensions.dart';

class PetStatistic extends StatelessWidget {
  const PetStatistic({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: context.colorScheme.primary.withOpacity(.1),
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      label: Column(
        children: [
          Text(
            title,
            style: context.textTheme.bodySmall!.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
          Text(
            value,
            style: context.textTheme.bodyLarge!.copyWith(
              color: context.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
