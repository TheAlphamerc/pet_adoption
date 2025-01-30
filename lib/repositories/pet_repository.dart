import 'package:pet_adoption/utils/data.dart';

import '../models/pet_model.dart';

class PetRepository {
  Future<List<Pet>> loadPets() async {
    // Simulate network call
    await Future.delayed(const Duration(seconds: 2));
    return Data.getPets().Pets;
  }
}
