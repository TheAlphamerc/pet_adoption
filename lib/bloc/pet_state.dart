part of 'pet_bloc.dart';

abstract class PetState extends Equatable {
  final String filter;
  PetState({this.filter = 'ALL'});
}

class PetsLoading extends PetState {
  @override
  List<Object?> get props => [filter];
}

class PetsLoaded extends PetState {
  final List<Pet> pets;
  final List<Pet> filteredPets;

  PetsLoaded(this.pets, {this.filteredPets = const [], super.filter});
  @override
  List<Object?> get props => [filter, pets, filteredPets];
}

class PetsError extends PetState {
  final String message;

  PetsError(this.message);
  @override
  List<Object?> get props => [filter, message];
}
