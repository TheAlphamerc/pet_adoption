import 'package:flutter_test/flutter_test.dart';
import 'package:pet_adoption/repositories/pet_repository.dart';
import 'package:pet_adoption/utils/data.dart';
import 'package:pet_adoption/models/pet_model.dart';

void main() {
  group('PetRepository', () {
    late PetRepository petRepository;

    setUp(() {
      petRepository = PetRepository();
    });

    test('loadPets returns a list of pets', () async {
      final pets = await petRepository.loadPets();

      expect(pets, isA<List<Pet>>());
      expect(pets.length, greaterThan(0)); // Assuming there are pets in Data.getPets()
    });

    test('loadPets returns correct pet data', () async {
      final pets = await petRepository.loadPets();

      // Assuming Data.getPets() returns a list with at least one pet
      final expectedPet = Data.getPets().Pets.first; // Adjust based on your data structure

      expect(pets.first.id, expectedPet.id);
      expect(pets.first.name, expectedPet.name);
      expect(pets.first.age, expectedPet.age);
      expect(pets.first.gender, expectedPet.gender);
    });
  });
}
