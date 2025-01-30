import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/utils/data.dart';
import 'package:pet_adoption/utils/extensions.dart';
import 'package:pet_adoption/widgets/cache_image.dart';
import 'package:pet_adoption/widgets/pet_card.dart';
import '../bloc/pet_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  static Route<T> getRoute<T>(
    PetBloc block,
  ) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider.value(
        value: block,
        child: const HistoryScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adoption History'),
      ),
      body: BlocBuilder<PetBloc, PetState>(
        builder: (context, state) {
          if (state is PetsLoaded) {
            final adoptedPets =
                state.pets.where((pet) => pet.isAdopted).toList();
            return GridView.builder(
              itemCount: adoptedPets.length,
              padding: const EdgeInsets.symmetric(vertical: 12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final pet = adoptedPets[index];
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: CacheImage(
                          path: Data.getPicture(pet.type, pet.id),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(pet.name, style: context.textTheme.titleMedium),
                  ],
                );
              },
            );
          }
          return const Center(child: Text('No adoption history'));
        },
      ),
    );
  }
}
