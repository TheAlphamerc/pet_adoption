import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/screens/history_screen.dart';
import 'package:pet_adoption/utils/extensions.dart';
import 'package:pet_adoption/widgets/filter_pet.dart';
import 'package:pet_adoption/widgets/search_bar.dart';

import '../bloc/pet_bloc.dart';
import '../widgets/pet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text(
              'Pawz',
              style: context.theme.textTheme.titleMedium,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {
                  Navigator.push(
                    context,
                    HistoryScreen.getRoute(context.read<PetBloc>()),
                  );
                },
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                border: Border(
                  bottom: BorderSide(
                    color: context.theme.dividerColor.withOpacity(.2),
                    width: .4,
                  ),
                ),
              ),
              child: const Row(
                children: [SearchPetField(), FilterPet()],
              ),
            ),
          ),
          BlocBuilder<PetBloc, PetState>(
            builder: (context, state) {
              if (state is PetsLoading) {
                return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (state is PetsLoaded) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final pet = state.filteredPets[index];
                      return PetCard(pet: pet);
                    },
                    childCount: state.filteredPets.length,
                  ),
                );
              }
              return const SliverToBoxAdapter(
                  child: Center(child: Text('No pets available')));
            },
          ),
        ],
      ),
    );
  }
}
