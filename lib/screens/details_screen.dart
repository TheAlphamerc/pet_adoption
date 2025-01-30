import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/utils/data.dart';
import 'package:pet_adoption/utils/extensions.dart';
import 'package:pet_adoption/widgets/cache_image.dart';
import 'package:pet_adoption/widgets/confetti.dart';
import 'package:pet_adoption/widgets/image_viewer.dart';
import 'package:pet_adoption/widgets/pet_state.dart';
import 'package:pet_adoption/widgets/small_chip.dart';

import '../bloc/pet_bloc.dart';
import '../models/pet_model.dart';

class DetailsScreen extends StatelessWidget {
  final Pet pet;

  const DetailsScreen({super.key, required this.pet});

  static Route<T> getRoute<T>(PetBloc block, Pet pet) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider.value(
        value: block,
        child: DetailsScreen(
          pet: pet,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: BlocBuilder<PetBloc, PetState>(
          builder: (context, state) {
            if (state is PetsLoaded) {
              final isAdopted = state.pets
                  .firstWhere((element) => element.id == pet.id)
                  .isAdopted;
              return FilledButton(
                onPressed: isAdopted
                    ? null
                    : () {
                        BlocProvider.of<PetBloc>(context).add(AdoptPet(pet.id));
                        showDialog(
                          context: context,
                          builder: (context) =>
                              ConfettiPopup(petName: pet.name),
                        );
                      },
                child: Text(isAdopted ? 'Already Adopted' : 'Adopt Me'),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              leading: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface.withOpacity(.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 20,
                    color: context.colorScheme.primary,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Hero(
                    tag: pet.id,
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: context.screenWidth,
                        maxHeight: context.screenHeight * 0.3,
                      ),
                      child: CacheImage(
                        path: Data.getPicture(pet.type, pet.id),
                        fit: BoxFit.fitWidth,
                        onTap: () {
                          Navigator.push(
                            context,
                            ImageViewer.getRoute(
                              Data.getPicture(pet.type, pet.id),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, 100),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surface,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color:
                                context.colorScheme.onSurface.withOpacity(.1),
                            blurRadius: 16,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                pet.name,
                                style: context.theme.textTheme.titleMedium,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '(${pet.breeds!})',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  color: context.colorScheme.onSurface
                                      .withOpacity(.8),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: context.colorScheme.primary
                                      .withOpacity(.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: switch (pet.gender) {
                                  Gender.FEMALE => Icon(
                                      Icons.female,
                                      size: 24,
                                      color: context.theme.colorScheme.primary,
                                    ),
                                  Gender.MALE => Icon(
                                      Icons.male,
                                      size: 24,
                                      color: context.theme.colorScheme.primary,
                                    ),
                                },
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallChip(text: '${pet.age} MONTHS'),
                              SmallChip(text: '${pet.weight} KG'),
                              SmallChip(text: '${pet.size.name} SIZE'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 14,
                                color: context.theme.colorScheme.primary,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                pet.distance.toUpperCase(),
                                style: context.theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 120),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PetStatistic(
                        title: 'Price',
                        value: '\$${pet.price}',
                      ),
                      PetStatistic(
                        title: 'Friendly',
                        value: pet.attributes.isFriendly ? 'Yes' : 'No',
                      ),
                      PetStatistic(
                        title: 'Vaccinated',
                        value: pet.attributes.isVaccinated ? 'Yes' : 'No',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Text(
                      pet.description!,
                      style: context.theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
