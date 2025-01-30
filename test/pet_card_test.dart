import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/widgets/pet_card.dart';

class MockPetBloc extends Mock implements PetBloc {}

void main() {
  group('PetCard', () {
    late Pet testPet;

    setUp(() {
      testPet = const Pet(
        id: 1,
        name: 'Buddy',
        age: 8,
        gender: Gender.MALE,
        breeds: 'Labrador',
        distance: '5 km',
        isAdopted: false,
      );
    });

    testWidgets('displays pet information correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<PetBloc>(
            create: (_) => MockPetBloc(),
            child: Scaffold(
              body: PetCard(pet: testPet),
            ),
          ),
        ),
      );

      // Verify that the pet's name is displayed
      expect(find.text('Buddy'), findsOneWidget);
      // Verify that the pet's age is displayed
      expect(find.text('8 month'), findsOneWidget);
      // Verify that the pet's breed is displayed
      expect(find.text('Labrador'), findsOneWidget);
      // Verify that the pet's distance is displayed
      expect(find.text('5 km'), findsOneWidget);
      // Verify that the male icon is displayed
      expect(find.byIcon(Icons.male), findsOneWidget);
    });

    testWidgets('displays "Already adopted" when pet is adopted',
        (WidgetTester tester) async {
      testPet =
          testPet.copyWith(isAdopted: true); // Update the pet to be adopted

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<PetBloc>(
            create: (_) => MockPetBloc(),
            child: Scaffold(
              body: PetCard(pet: testPet),
            ),
          ),
        ),
      );

      // Verify that the "Already adopted" text is displayed
      expect(find.text('Already adopted'), findsOneWidget);
    });
  });
}
