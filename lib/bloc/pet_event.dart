part of 'pet_bloc.dart';

abstract class PetEvent extends Equatable {}

class LoadPets extends PetEvent {
  @override
  List<Object?> get props => [];
}

class AdoptPet extends PetEvent {
  final int petId;

  AdoptPet(this.petId);

  @override
  List<Object?> get props => [petId];
}

class FilterPets extends PetEvent {
  final String species;
  FilterPets(this.species);

  @override
  List<Object?> get props => [species];
}

class SearchPets extends PetEvent {
  final String query;
  SearchPets(this.query);
  @override
  List<Object?> get props => [query];
}
