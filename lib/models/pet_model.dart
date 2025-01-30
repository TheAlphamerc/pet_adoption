import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_model.freezed.dart';
part 'pet_model.g.dart';

@freezed
class PetResponse with _$PetResponse {
  const factory PetResponse({
    required List<Pet> Pets,
  }) = _PetResponse;

  factory PetResponse.fromJson(Map<String, dynamic> json) =>
      _$PetResponseFromJson(json);
}

@freezed
class Pet with _$Pet {
  const factory Pet({
    required int id,
    @Default(Species.DOG) Species type,
    String? breeds,
    @Default(0) int age,
    required Gender gender,
    @Default(Size.MEDIUM) Size size,
    required String name,
    String? description,
    @Default(0) double weight,
    @Default(false) isFavorite,
    @Default(0) double price,
    @Default(false) isAdopted,
    String? picture,
    @Default('N/A') String distance,
    @Default(Attributes()) Attributes attributes,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    @Default(false) bool isFriendly,
    @Default(false) bool isHouseTrained,
    @Default(false) bool isVaccinated,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

enum Gender { FEMALE, MALE }

enum Size { LARGE, MEDIUM, SMALL }

enum Species { CAT, DOG, RABBIT, ALL }
