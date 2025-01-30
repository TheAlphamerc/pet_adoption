import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';
import 'package:pet_adoption/screens/details_screen.dart';
import 'package:pet_adoption/utils/data.dart';
import 'package:pet_adoption/utils/extensions.dart';
import 'package:pet_adoption/widgets/cache_image.dart';
import '../models/pet_model.dart';

class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, DetailsScreen.getRoute(context.read<PetBloc>(), pet));
        },
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              padding:
                  const EdgeInsets.all(8) + const EdgeInsets.only(left: 40),
              margin: const EdgeInsets.only(left: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(35),
                  right: Radius.circular(12),
                ),
                color: pet.isAdopted
                    ? context.colorScheme.secondary.withOpacity(.2)
                    : context.theme.cardColor,
                border: Border.all(
                  color: context.theme.colorScheme.onSurface.withOpacity(0.1),
                  width: .5,
                ),
                boxShadow: context.isDarkMode
                    ? null
                    : <BoxShadow>[
                        BoxShadow(
                          color: context.theme.colorScheme.secondary
                              .withOpacity(0.1),
                          blurRadius: 15,
                          spreadRadius: 10,
                        ),
                      ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        pet.name,
                        style: context.theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      switch (pet.gender) {
                        Gender.FEMALE => Icon(
                            Icons.female,
                            size: 16,
                            color: context.theme.colorScheme.primary,
                          ),
                        Gender.MALE => Icon(
                            Icons.male,
                            size: 16,
                            color: context.theme.colorScheme.primary,
                          ),
                      },
                      if (pet.isAdopted) ...[
                        const Spacer(),
                        Text(
                          'Already adopted',
                          style: context.theme.textTheme.bodySmall!.copyWith(
                            color: context.theme.colorScheme.secondary,
                          ),
                        ),
                      ]
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule_rounded,
                        size: 14,
                        color: context.theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${pet.age} month',
                        style: context.theme.textTheme.labelMedium,
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.pets,
                        size: 14,
                        color: context.theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        pet.breeds ?? 'Unknown',
                        style: context.theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: context.theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        pet.distance,
                        style: context.theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Hero(
              tag: pet.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: CacheImage(
                    path: Data.getPicture(pet.type, pet.id),
                    fit: BoxFit.cover,
                    placeholder: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.surfaceTint,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color:
                              context.theme.colorScheme.surface.withOpacity(.2),
                          width: .5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
