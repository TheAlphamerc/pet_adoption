import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          if (state is PetAdopted) {
            final adoptedPets =
                state.pets.where((pet) => pet.isAdopted).toList();
            return ListView.builder(
              itemCount: adoptedPets.length,
              itemBuilder: (context, index) {
                final pet = adoptedPets[index];
                return ListTile(
                  title: Text(pet.name),
                  subtitle: Text('Adopted on ${DateTime.now()}'),
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
