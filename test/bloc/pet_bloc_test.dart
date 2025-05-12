import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/repositories/pet_repository.dart';

class MockPetRepository extends Mock implements PetRepository {}

void main() {
  group('PetBloc', () {
    late PetBloc petBloc;
    late MockPetRepository mockPetRepository;

    const mockPetsList = [
      Pet(
        id: 1,
        name: 'Buddy',
        gender: Gender.MALE,
        type: Species.DOG,
      ),
      Pet(
        id: 2,
        name: 'Mittens',
        gender: Gender.FEMALE,
        type: Species.CAT,
      ),
    ];

    setUp(() {
      mockPetRepository = MockPetRepository();
      petBloc = PetBloc(mockPetRepository);
    });

    tearDown(() {
      petBloc.close();
    });

    test('initial state is PetsLoading', () {
      expect(petBloc.state, PetsLoading());
    });

    blocTest<PetBloc, PetState>(
      'emits [PetsLoading, PetsLoaded] when LoadPets is added',
      build: () {
        when(() => mockPetRepository.loadPets()).thenAnswer(
          (_) async => [
            const Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
            ),
          ],
        );
        return petBloc;
      },
      act: (bloc) => bloc.add(LoadPets()),
      expect: () => [
        PetsLoading(),
        const PetsLoaded(
          [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
            ),
          ],
          filteredPets: [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
            ),
          ],
        ),
      ],
    );

    blocTest<PetBloc, PetState>(
      'emits [PetsLoaded] when AdoptPet is added',
      build: () => petBloc,
      seed: () => const PetsLoaded(mockPetsList, filteredPets: mockPetsList),
      act: (bloc) => bloc.add(AdoptPet(1)),
      expect: () => [
        const PetsLoaded([
          Pet(
            id: 1,
            name: 'Buddy',
            gender: Gender.MALE,
            type: Species.DOG,
            isAdopted: true,
          ),
          Pet(
            id: 2,
            name: 'Mittens',
            gender: Gender.FEMALE,
            type: Species.CAT,
          ),
        ], filteredPets: [
          Pet(
            id: 1,
            name: 'Buddy',
            gender: Gender.MALE,
            type: Species.DOG,
            isAdopted: true,
          ),
          Pet(
            id: 2,
            name: 'Mittens',
            gender: Gender.FEMALE,
            type: Species.CAT,
          ),
        ]),
      ],
    );

    blocTest<PetBloc, PetState>(
      'emits [PetsLoaded] when FilterPets is added',
      build: () => petBloc,
      seed: () => const PetsLoaded(mockPetsList, filteredPets: mockPetsList),
      act: (bloc) => bloc.add(FilterPets(Species.CAT.name)),
      expect: () => [
        PetsLoaded(
          mockPetsList,
          filteredPets:
              mockPetsList.where(((pet) => pet.type == Species.CAT)).toList(),
          filter: Species.CAT.name,
        ),
      ],
    );

    blocTest<PetBloc, PetState>(
      'emits [PetsLoaded] when Species.ALL FilterPets is added',
      build: () => petBloc,
      seed: () => const PetsLoaded(mockPetsList, filteredPets: mockPetsList),
      act: (bloc) => bloc.add(FilterPets(Species.ALL.name)),
      expect: () => [
        const PetsLoaded(mockPetsList, filteredPets: mockPetsList),
      ],
    );

    blocTest<PetBloc, PetState>(
      'emits [PetsLoaded] when SearchPets is added',
      build: () => petBloc,
      seed: () => const PetsLoaded(mockPetsList, filteredPets: mockPetsList),
      act: (bloc) => bloc.add(SearchPets('Buddy')),
      expect: () => [
        PetsLoaded(
          mockPetsList,
          filteredPets: mockPetsList
              .where((pet) =>
                  pet.name.toLowerCase().contains('Buddy'.toLowerCase()))
              .toList(),
          filter: 'ALL',
        ),
      ],
    );
  });
}
