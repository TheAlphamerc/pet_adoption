part of 'pet_bloc.dart';

abstract class PetEvent {}

class LoadPets extends PetEvent {}

class AdoptPet extends PetEvent {
  final int petId;

  AdoptPet(this.petId);
}

class FilterPets extends PetEvent {
  final String species;
  FilterPets(this.species);
}

class SearchPets extends PetEvent {
  final String query;
  SearchPets(this.query);
}
