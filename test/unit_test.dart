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
        PetsLoaded(
          const [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
            ),
          ],
          filteredPets: const [
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
      build: () {
        when(() => mockPetRepository.loadPets()).thenAnswer(
          (_) async => [
            const Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              isAdopted: false,
            ),
          ],
        );
        petBloc.add(LoadPets());
        return petBloc;
      },
      act: (bloc) => bloc.add(AdoptPet(1)),
      expect: () => [
        PetsLoading(),
        PetsLoaded(
          const [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              isAdopted: false,
            )
          ],
          filteredPets: const [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              isAdopted: false,
            )
          ],
        ),
        PetsLoaded(
          const [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              isAdopted: true,
            )
          ],
          filteredPets: const [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              isAdopted: true,
            )
          ],
        ),
      ],
    );

    blocTest<PetBloc, PetState>(
      'emits [PetsLoaded] when FilterPets is added',
      build: () {
        when(() => mockPetRepository.loadPets()).thenAnswer(
          (_) async => [
            const Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              type: Species.DOG,
            ),
            const Pet(
              id: 2,
              name: 'Mittens',
              gender: Gender.FEMALE,
              type: Species.CAT,
            ),
          ],
        );
        petBloc.add(LoadPets());
        return petBloc;
      },
      act: (bloc) => bloc.add(FilterPets(Species.CAT.name)),
      expect: () => [
        PetsLoading(),
        PetsLoaded(const [
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
        ], filteredPets: const [
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
        ]),
        PetsLoaded(
          const [
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
          ],
          filteredPets: const [
            Pet(
              id: 2,
              name: 'Mittens',
              gender: Gender.FEMALE,
              type: Species.CAT,
            ),
          ],
          filter: Species.CAT.name,
        ),
      ],
    );

    blocTest<PetBloc, PetState>(
      'emits [PetsLoaded] when SearchPets is added',
      build: () {
        when(() => mockPetRepository.loadPets()).thenAnswer(
          (_) async => [
            const Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              type: Species.DOG,
            ),
            const Pet(
              id: 2,
              name: 'Mittens',
              gender: Gender.FEMALE,
              type: Species.CAT,
            ),
          ],
        );
        petBloc.add(LoadPets());
        return petBloc;
      },
      act: (bloc) => bloc.add(SearchPets('Buddy')),
      expect: () => [
        PetsLoading(),
        PetsLoaded(const [
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
        ], filteredPets: const [
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
        ]),
        PetsLoaded(
          const [
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
          ],
          filteredPets: const [
            Pet(
              id: 1,
              name: 'Buddy',
              gender: Gender.MALE,
              type: Species.DOG,
            ),
          ],
          filter: 'ALL',
        ),
      ],
    );
  });
}
