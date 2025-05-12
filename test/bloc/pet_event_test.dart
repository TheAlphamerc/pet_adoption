import 'package:flutter_test/flutter_test.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';

void main() {
  test('Supports comparison', () {
    expect(AdoptPet(1), isA<PetEvent>());
    expect(AdoptPet(2), AdoptPet(2));
    expect(FilterPets('Dog'), isA<PetEvent>());
    expect(FilterPets('Cat'), FilterPets('Cat'));
    expect(SearchPets('Fido'), isA<PetEvent>());
    expect(SearchPets('Fido'), SearchPets('Fido'));
  });
}
