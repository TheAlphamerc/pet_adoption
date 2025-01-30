// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PetResponse _$PetResponseFromJson(Map<String, dynamic> json) {
  return _PetResponse.fromJson(json);
}

/// @nodoc
mixin _$PetResponse {
  List<Pet> get Pets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetResponseCopyWith<PetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetResponseCopyWith<$Res> {
  factory $PetResponseCopyWith(
          PetResponse value, $Res Function(PetResponse) then) =
      _$PetResponseCopyWithImpl<$Res, PetResponse>;
  @useResult
  $Res call({List<Pet> Pets});
}

/// @nodoc
class _$PetResponseCopyWithImpl<$Res, $Val extends PetResponse>
    implements $PetResponseCopyWith<$Res> {
  _$PetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Pets = null,
  }) {
    return _then(_value.copyWith(
      Pets: null == Pets
          ? _value.Pets
          : Pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetResponseImplCopyWith<$Res>
    implements $PetResponseCopyWith<$Res> {
  factory _$$PetResponseImplCopyWith(
          _$PetResponseImpl value, $Res Function(_$PetResponseImpl) then) =
      __$$PetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pet> Pets});
}

/// @nodoc
class __$$PetResponseImplCopyWithImpl<$Res>
    extends _$PetResponseCopyWithImpl<$Res, _$PetResponseImpl>
    implements _$$PetResponseImplCopyWith<$Res> {
  __$$PetResponseImplCopyWithImpl(
      _$PetResponseImpl _value, $Res Function(_$PetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Pets = null,
  }) {
    return _then(_$PetResponseImpl(
      Pets: null == Pets
          ? _value._Pets
          : Pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetResponseImpl implements _PetResponse {
  const _$PetResponseImpl({required final List<Pet> Pets}) : _Pets = Pets;

  factory _$PetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetResponseImplFromJson(json);

  final List<Pet> _Pets;
  @override
  List<Pet> get Pets {
    if (_Pets is EqualUnmodifiableListView) return _Pets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Pets);
  }

  @override
  String toString() {
    return 'PetResponse(Pets: $Pets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetResponseImpl &&
            const DeepCollectionEquality().equals(other._Pets, _Pets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_Pets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetResponseImplCopyWith<_$PetResponseImpl> get copyWith =>
      __$$PetResponseImplCopyWithImpl<_$PetResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetResponseImplToJson(
      this,
    );
  }
}

abstract class _PetResponse implements PetResponse {
  const factory _PetResponse({required final List<Pet> Pets}) =
      _$PetResponseImpl;

  factory _PetResponse.fromJson(Map<String, dynamic> json) =
      _$PetResponseImpl.fromJson;

  @override
  List<Pet> get Pets;
  @override
  @JsonKey(ignore: true)
  _$$PetResponseImplCopyWith<_$PetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
mixin _$Pet {
  int get id => throw _privateConstructorUsedError;
  Species get type => throw _privateConstructorUsedError;
  String? get breeds => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  dynamic get isFavorite => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  dynamic get isAdopted => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {int id,
      Species type,
      String? breeds,
      int age,
      Gender gender,
      Size size,
      String name,
      String? description,
      double weight,
      dynamic isFavorite,
      double price,
      dynamic isAdopted,
      String picture,
      String distance,
      Attributes attributes});

  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$PetCopyWithImpl<$Res, $Val extends Pet> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? breeds = freezed,
    Object? age = null,
    Object? gender = null,
    Object? size = null,
    Object? name = null,
    Object? description = freezed,
    Object? weight = null,
    Object? isFavorite = freezed,
    Object? price = null,
    Object? isAdopted = freezed,
    Object? picture = null,
    Object? distance = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAdopted: freezed == isAdopted
          ? _value.isAdopted
          : isAdopted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PetImplCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$PetImplCopyWith(_$PetImpl value, $Res Function(_$PetImpl) then) =
      __$$PetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Species type,
      String? breeds,
      int age,
      Gender gender,
      Size size,
      String name,
      String? description,
      double weight,
      dynamic isFavorite,
      double price,
      dynamic isAdopted,
      String picture,
      String distance,
      Attributes attributes});

  @override
  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$PetImplCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res, _$PetImpl>
    implements _$$PetImplCopyWith<$Res> {
  __$$PetImplCopyWithImpl(_$PetImpl _value, $Res Function(_$PetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? breeds = freezed,
    Object? age = null,
    Object? gender = null,
    Object? size = null,
    Object? name = null,
    Object? description = freezed,
    Object? weight = null,
    Object? isFavorite = freezed,
    Object? price = null,
    Object? isAdopted = freezed,
    Object? picture = null,
    Object? distance = null,
    Object? attributes = null,
  }) {
    return _then(_$PetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      isFavorite: freezed == isFavorite ? _value.isFavorite! : isFavorite,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAdopted: freezed == isAdopted ? _value.isAdopted! : isAdopted,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetImpl implements _Pet {
  const _$PetImpl(
      {required this.id,
      required this.type,
      this.breeds,
      required this.age,
      required this.gender,
      required this.size,
      required this.name,
      this.description,
      required this.weight,
      this.isFavorite = false,
      required this.price,
      this.isAdopted = false,
      required this.picture,
      required this.distance,
      required this.attributes});

  factory _$PetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetImplFromJson(json);

  @override
  final int id;
  @override
  final Species type;
  @override
  final String? breeds;
  @override
  final int age;
  @override
  final Gender gender;
  @override
  final Size size;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double weight;
  @override
  @JsonKey()
  final dynamic isFavorite;
  @override
  final double price;
  @override
  @JsonKey()
  final dynamic isAdopted;
  @override
  final String picture;
  @override
  final String distance;
  @override
  final Attributes attributes;

  @override
  String toString() {
    return 'Pet(id: $id, type: $type, breeds: $breeds, age: $age, gender: $gender, size: $size, name: $name, description: $description, weight: $weight, isFavorite: $isFavorite, price: $price, isAdopted: $isAdopted, picture: $picture, distance: $distance, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.breeds, breeds) || other.breeds == breeds) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other.isAdopted, isAdopted) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      breeds,
      age,
      gender,
      size,
      name,
      description,
      weight,
      const DeepCollectionEquality().hash(isFavorite),
      price,
      const DeepCollectionEquality().hash(isAdopted),
      picture,
      distance,
      attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      __$$PetImplCopyWithImpl<_$PetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetImplToJson(
      this,
    );
  }
}

abstract class _Pet implements Pet {
  const factory _Pet(
      {required final int id,
      required final Species type,
      final String? breeds,
      required final int age,
      required final Gender gender,
      required final Size size,
      required final String name,
      final String? description,
      required final double weight,
      final dynamic isFavorite,
      required final double price,
      final dynamic isAdopted,
      required final String picture,
      required final String distance,
      required final Attributes attributes}) = _$PetImpl;

  factory _Pet.fromJson(Map<String, dynamic> json) = _$PetImpl.fromJson;

  @override
  int get id;
  @override
  Species get type;
  @override
  String? get breeds;
  @override
  int get age;
  @override
  Gender get gender;
  @override
  Size get size;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get weight;
  @override
  dynamic get isFavorite;
  @override
  double get price;
  @override
  dynamic get isAdopted;
  @override
  String get picture;
  @override
  String get distance;
  @override
  Attributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  bool get isFriendly => throw _privateConstructorUsedError;
  bool get isHouseTrained => throw _privateConstructorUsedError;
  bool get isVaccinated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call({bool isFriendly, bool isHouseTrained, bool isVaccinated});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFriendly = null,
    Object? isHouseTrained = null,
    Object? isVaccinated = null,
  }) {
    return _then(_value.copyWith(
      isFriendly: null == isFriendly
          ? _value.isFriendly
          : isFriendly // ignore: cast_nullable_to_non_nullable
              as bool,
      isHouseTrained: null == isHouseTrained
          ? _value.isHouseTrained
          : isHouseTrained // ignore: cast_nullable_to_non_nullable
              as bool,
      isVaccinated: null == isVaccinated
          ? _value.isVaccinated
          : isVaccinated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
          _$AttributesImpl value, $Res Function(_$AttributesImpl) then) =
      __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFriendly, bool isHouseTrained, bool isVaccinated});
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
      _$AttributesImpl _value, $Res Function(_$AttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFriendly = null,
    Object? isHouseTrained = null,
    Object? isVaccinated = null,
  }) {
    return _then(_$AttributesImpl(
      isFriendly: null == isFriendly
          ? _value.isFriendly
          : isFriendly // ignore: cast_nullable_to_non_nullable
              as bool,
      isHouseTrained: null == isHouseTrained
          ? _value.isHouseTrained
          : isHouseTrained // ignore: cast_nullable_to_non_nullable
              as bool,
      isVaccinated: null == isVaccinated
          ? _value.isVaccinated
          : isVaccinated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl(
      {this.isFriendly = false,
      this.isHouseTrained = false,
      this.isVaccinated = false});

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  @JsonKey()
  final bool isFriendly;
  @override
  @JsonKey()
  final bool isHouseTrained;
  @override
  @JsonKey()
  final bool isVaccinated;

  @override
  String toString() {
    return 'Attributes(isFriendly: $isFriendly, isHouseTrained: $isHouseTrained, isVaccinated: $isVaccinated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.isFriendly, isFriendly) ||
                other.isFriendly == isFriendly) &&
            (identical(other.isHouseTrained, isHouseTrained) ||
                other.isHouseTrained == isHouseTrained) &&
            (identical(other.isVaccinated, isVaccinated) ||
                other.isVaccinated == isVaccinated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isFriendly, isHouseTrained, isVaccinated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {final bool isFriendly,
      final bool isHouseTrained,
      final bool isVaccinated}) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  bool get isFriendly;
  @override
  bool get isHouseTrained;
  @override
  bool get isVaccinated;
  @override
  @JsonKey(ignore: true)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
