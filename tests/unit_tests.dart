import 'package:flutter_test/flutter_test.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';
import 'package:pet_adoption/repositories/pet_repository.dart';

void main() {
  group('PetBloc', () {
    late PetBloc petBloc;
    late PetRepository petRepository;

    setUp(() {
      petRepository = PetRepository();
      petBloc = PetBloc(petRepository);
    });

    test('initial state is PetsLoading', () {
      expect(petBloc.state, isA<PetsLoading>());
    });

    test('emits PetsLoaded when LoadPets is added', () async {
      petBloc.add(LoadPets());
      await expectLater(
        petBloc.stream,
        emitsInOrder([isA<PetsLoading>(), isA<PetsLoaded>()]),
      );
    });
  });
}
