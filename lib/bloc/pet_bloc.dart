import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/pet_model.dart';
import '../repositories/pet_repository.dart';

part 'pet_event.dart';
part 'pet_state.dart';

class PetBloc extends Bloc<PetEvent, PetState> {
  final PetRepository petRepository;

  PetBloc(this.petRepository) : super(PetsLoading()) {
    on<LoadPets>(_onLoadPets);
    on<AdoptPet>(_onAdoptPet);
    on<FilterPets>(_onFilterPets);
    on<SearchPets>(_onSearchPets);
  }

  void _onLoadPets(LoadPets event, Emitter<PetState> emit) async {
    emit(PetsLoading());
    final pets = await petRepository.loadPets();
    emit(PetsLoaded(pets, filteredPets: pets));
  }

  void _onAdoptPet(AdoptPet event, Emitter<PetState> emit) async {
    final currentState = state;
    if (currentState is PetsLoaded) {
      final updatedPets = currentState.pets.map((pet) {
        if (pet.id == event.petId) {
          return pet.copyWith(isAdopted: true);
        }
        return pet;
      }).toList();
      emit(PetsLoaded(updatedPets, filteredPets: updatedPets));
      emit(PetAdopted(updatedPets));
    }
  }

  void _onFilterPets(FilterPets event, Emitter<PetState> emit) async {
    final currentState = state;
    if (currentState is PetsLoaded) {
      final allPets = currentState.pets;
      if (event.species == Species.ALL.name) {
        emit(
          PetsLoaded(
            allPets,
            filteredPets: allPets,
            filter: event.species,
          ),
        );
      } else {
        final filteredPets =
            allPets.where((pet) => pet.type.name == event.species).toList();

        emit(
          PetsLoaded(
            allPets,
            filteredPets: filteredPets,
            filter: event.species,
          ),
        );
      }
    }
  }

  void _onSearchPets(SearchPets event, Emitter<PetState> emit) async {
    final currentState = state;
    if (currentState is PetsLoaded) {
      final allPets = currentState.pets;
      final filteredPets = allPets
          .where((pet) => pet.name.toLowerCase().contains(event.query))
          .toList();
      emit(
        PetsLoaded(
          allPets,
          filteredPets: filteredPets,
          filter: currentState.filter,
        ),
      );
    }
  }
}
