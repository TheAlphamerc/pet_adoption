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
    required Species type,
    String? breeds,
    required int age,
    required Gender gender,
    required Size size,
    required String name,
    String? description,
    required double weight,
    @Default(false) isFavorite,
    required double price,
    @Default(false) isAdopted,
    required String picture,
    required String distance,
    required Attributes attributes,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    required bool isFriendly,
    required bool? isHouseTrained,
    required bool isVacinated,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

enum Gender { FEMALE, MALE }

enum Size { LARGE, MEDIUM, SMALL }

enum Species { CAT, DOG, RABBIT, ALL }
