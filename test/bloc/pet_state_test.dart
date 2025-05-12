import 'package:flutter_test/flutter_test.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';

void main() {
  test('Supports value comparison', () {
    expect(PetsLoading(), isA<PetState>());
    expect(const PetsLoaded([], filteredPets: []), isA<PetState>());
  });
}
