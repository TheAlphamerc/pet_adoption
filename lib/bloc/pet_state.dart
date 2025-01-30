part of 'pet_bloc.dart';

abstract class PetState {
  final String filter;
  PetState({this.filter = 'ALL'});
}

class PetsLoading extends PetState {}

class PetsLoaded extends PetState {
  final List<Pet> pets;
  final List<Pet> filteredPets;

  PetsLoaded(this.pets, {this.filteredPets = const [], super.filter});
}

class PetAdopted extends PetState {
  final List<Pet> pets;

  PetAdopted(this.pets);
}
