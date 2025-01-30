// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetResponseImpl _$$PetResponseImplFromJson(Map<String, dynamic> json) =>
    _$PetResponseImpl(
      Pets: (json['Pets'] as List<dynamic>)
          .map((e) => Pet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PetResponseImplToJson(_$PetResponseImpl instance) =>
    <String, dynamic>{
      'Pets': instance.Pets.map((e) => e.toJson()).toList(),
    };

_$PetImpl _$$PetImplFromJson(Map<String, dynamic> json) => _$PetImpl(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$SpeciesEnumMap, json['type']),
      breeds: json['breeds'] as String?,
      age: (json['age'] as num).toInt(),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      size: $enumDecode(_$SizeEnumMap, json['size']),
      name: json['name'] as String,
      description: json['description'] as String?,
      weight: (json['weight'] as num).toDouble(),
      isFavorite: json['isFavorite'] ?? false,
      price: (json['price'] as num).toDouble(),
      isAdopted: json['isAdopted'] ?? false,
      picture: json['picture'] as String,
      distance: json['distance'] as String,
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PetImplToJson(_$PetImpl instance) => <String, dynamic>{
      'id': instance.id,
      'type': _$SpeciesEnumMap[instance.type]!,
      'breeds': instance.breeds,
      'age': instance.age,
      'gender': _$GenderEnumMap[instance.gender]!,
      'size': _$SizeEnumMap[instance.size]!,
      'name': instance.name,
      'description': instance.description,
      'weight': instance.weight,
      'isFavorite': instance.isFavorite,
      'price': instance.price,
      'isAdopted': instance.isAdopted,
      'picture': instance.picture,
      'distance': instance.distance,
      'attributes': instance.attributes.toJson(),
    };

const _$SpeciesEnumMap = {
  Species.CAT: 'CAT',
  Species.DOG: 'DOG',
  Species.RABBIT: 'RABBIT',
  Species.ALL: 'ALL',
};

const _$GenderEnumMap = {
  Gender.FEMALE: 'FEMALE',
  Gender.MALE: 'MALE',
};

const _$SizeEnumMap = {
  Size.LARGE: 'LARGE',
  Size.MEDIUM: 'MEDIUM',
  Size.SMALL: 'SMALL',
};

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      isFriendly: json['isFriendly'] as bool? ?? false,
      isHouseTrained: json['isHouseTrained'] as bool? ?? false,
      isVaccinated: json['isVaccinated'] as bool? ?? false,
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'isFriendly': instance.isFriendly,
      'isHouseTrained': instance.isHouseTrained,
      'isVaccinated': instance.isVaccinated,
    };
