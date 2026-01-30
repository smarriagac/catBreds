// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Breeds {

 Weight get weight; String get id; String get name; String? get cfaUrl; String? get vetstreetUrl; String? get vcahospitalsUrl; String get temperament; String get origin; String get countryCodes; String get countryCode; String get description; String get lifeSpan; int get indoor; int? get lap; String? get altNames; int get adaptability; int get affectionLevel; int get childFriendly; int get dogFriendly; int get energyLevel; int get grooming; int get healthIssues; int get intelligence; int get sheddingLevel; int get socialNeeds; int get strangerFriendly; int get vocalisation; int get experimental; int get hairless; int get natural; int get rare; int get rex; int get suppressedTail; int get shortLegs; String? get wikipediaUrl; int get hypoallergenic; String? get referenceImageId;
/// Create a copy of Breeds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BreedsCopyWith<Breeds> get copyWith => _$BreedsCopyWithImpl<Breeds>(this as Breeds, _$identity);

  /// Serializes this Breeds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Breeds&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cfaUrl, cfaUrl) || other.cfaUrl == cfaUrl)&&(identical(other.vetstreetUrl, vetstreetUrl) || other.vetstreetUrl == vetstreetUrl)&&(identical(other.vcahospitalsUrl, vcahospitalsUrl) || other.vcahospitalsUrl == vcahospitalsUrl)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.countryCodes, countryCodes) || other.countryCodes == countryCodes)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.description, description) || other.description == description)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.indoor, indoor) || other.indoor == indoor)&&(identical(other.lap, lap) || other.lap == lap)&&(identical(other.altNames, altNames) || other.altNames == altNames)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.childFriendly, childFriendly) || other.childFriendly == childFriendly)&&(identical(other.dogFriendly, dogFriendly) || other.dogFriendly == dogFriendly)&&(identical(other.energyLevel, energyLevel) || other.energyLevel == energyLevel)&&(identical(other.grooming, grooming) || other.grooming == grooming)&&(identical(other.healthIssues, healthIssues) || other.healthIssues == healthIssues)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.sheddingLevel, sheddingLevel) || other.sheddingLevel == sheddingLevel)&&(identical(other.socialNeeds, socialNeeds) || other.socialNeeds == socialNeeds)&&(identical(other.strangerFriendly, strangerFriendly) || other.strangerFriendly == strangerFriendly)&&(identical(other.vocalisation, vocalisation) || other.vocalisation == vocalisation)&&(identical(other.experimental, experimental) || other.experimental == experimental)&&(identical(other.hairless, hairless) || other.hairless == hairless)&&(identical(other.natural, natural) || other.natural == natural)&&(identical(other.rare, rare) || other.rare == rare)&&(identical(other.rex, rex) || other.rex == rex)&&(identical(other.suppressedTail, suppressedTail) || other.suppressedTail == suppressedTail)&&(identical(other.shortLegs, shortLegs) || other.shortLegs == shortLegs)&&(identical(other.wikipediaUrl, wikipediaUrl) || other.wikipediaUrl == wikipediaUrl)&&(identical(other.hypoallergenic, hypoallergenic) || other.hypoallergenic == hypoallergenic)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,weight,id,name,cfaUrl,vetstreetUrl,vcahospitalsUrl,temperament,origin,countryCodes,countryCode,description,lifeSpan,indoor,lap,altNames,adaptability,affectionLevel,childFriendly,dogFriendly,energyLevel,grooming,healthIssues,intelligence,sheddingLevel,socialNeeds,strangerFriendly,vocalisation,experimental,hairless,natural,rare,rex,suppressedTail,shortLegs,wikipediaUrl,hypoallergenic,referenceImageId]);

@override
String toString() {
  return 'Breeds(weight: $weight, id: $id, name: $name, cfaUrl: $cfaUrl, vetstreetUrl: $vetstreetUrl, vcahospitalsUrl: $vcahospitalsUrl, temperament: $temperament, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, description: $description, lifeSpan: $lifeSpan, indoor: $indoor, lap: $lap, altNames: $altNames, adaptability: $adaptability, affectionLevel: $affectionLevel, childFriendly: $childFriendly, dogFriendly: $dogFriendly, energyLevel: $energyLevel, grooming: $grooming, healthIssues: $healthIssues, intelligence: $intelligence, sheddingLevel: $sheddingLevel, socialNeeds: $socialNeeds, strangerFriendly: $strangerFriendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressedTail: $suppressedTail, shortLegs: $shortLegs, wikipediaUrl: $wikipediaUrl, hypoallergenic: $hypoallergenic, referenceImageId: $referenceImageId)';
}


}

/// @nodoc
abstract mixin class $BreedsCopyWith<$Res>  {
  factory $BreedsCopyWith(Breeds value, $Res Function(Breeds) _then) = _$BreedsCopyWithImpl;
@useResult
$Res call({
 Weight weight, String id, String name, String? cfaUrl, String? vetstreetUrl, String? vcahospitalsUrl, String temperament, String origin, String countryCodes, String countryCode, String description, String lifeSpan, int indoor, int? lap, String? altNames, int adaptability, int affectionLevel, int childFriendly, int dogFriendly, int energyLevel, int grooming, int healthIssues, int intelligence, int sheddingLevel, int socialNeeds, int strangerFriendly, int vocalisation, int experimental, int hairless, int natural, int rare, int rex, int suppressedTail, int shortLegs, String? wikipediaUrl, int hypoallergenic, String? referenceImageId
});


$WeightCopyWith<$Res> get weight;

}
/// @nodoc
class _$BreedsCopyWithImpl<$Res>
    implements $BreedsCopyWith<$Res> {
  _$BreedsCopyWithImpl(this._self, this._then);

  final Breeds _self;
  final $Res Function(Breeds) _then;

/// Create a copy of Breeds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weight = null,Object? id = null,Object? name = null,Object? cfaUrl = freezed,Object? vetstreetUrl = freezed,Object? vcahospitalsUrl = freezed,Object? temperament = null,Object? origin = null,Object? countryCodes = null,Object? countryCode = null,Object? description = null,Object? lifeSpan = null,Object? indoor = null,Object? lap = freezed,Object? altNames = freezed,Object? adaptability = null,Object? affectionLevel = null,Object? childFriendly = null,Object? dogFriendly = null,Object? energyLevel = null,Object? grooming = null,Object? healthIssues = null,Object? intelligence = null,Object? sheddingLevel = null,Object? socialNeeds = null,Object? strangerFriendly = null,Object? vocalisation = null,Object? experimental = null,Object? hairless = null,Object? natural = null,Object? rare = null,Object? rex = null,Object? suppressedTail = null,Object? shortLegs = null,Object? wikipediaUrl = freezed,Object? hypoallergenic = null,Object? referenceImageId = freezed,}) {
  return _then(_self.copyWith(
weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Weight,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cfaUrl: freezed == cfaUrl ? _self.cfaUrl : cfaUrl // ignore: cast_nullable_to_non_nullable
as String?,vetstreetUrl: freezed == vetstreetUrl ? _self.vetstreetUrl : vetstreetUrl // ignore: cast_nullable_to_non_nullable
as String?,vcahospitalsUrl: freezed == vcahospitalsUrl ? _self.vcahospitalsUrl : vcahospitalsUrl // ignore: cast_nullable_to_non_nullable
as String?,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,indoor: null == indoor ? _self.indoor : indoor // ignore: cast_nullable_to_non_nullable
as int,lap: freezed == lap ? _self.lap : lap // ignore: cast_nullable_to_non_nullable
as int?,altNames: freezed == altNames ? _self.altNames : altNames // ignore: cast_nullable_to_non_nullable
as String?,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,childFriendly: null == childFriendly ? _self.childFriendly : childFriendly // ignore: cast_nullable_to_non_nullable
as int,dogFriendly: null == dogFriendly ? _self.dogFriendly : dogFriendly // ignore: cast_nullable_to_non_nullable
as int,energyLevel: null == energyLevel ? _self.energyLevel : energyLevel // ignore: cast_nullable_to_non_nullable
as int,grooming: null == grooming ? _self.grooming : grooming // ignore: cast_nullable_to_non_nullable
as int,healthIssues: null == healthIssues ? _self.healthIssues : healthIssues // ignore: cast_nullable_to_non_nullable
as int,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,sheddingLevel: null == sheddingLevel ? _self.sheddingLevel : sheddingLevel // ignore: cast_nullable_to_non_nullable
as int,socialNeeds: null == socialNeeds ? _self.socialNeeds : socialNeeds // ignore: cast_nullable_to_non_nullable
as int,strangerFriendly: null == strangerFriendly ? _self.strangerFriendly : strangerFriendly // ignore: cast_nullable_to_non_nullable
as int,vocalisation: null == vocalisation ? _self.vocalisation : vocalisation // ignore: cast_nullable_to_non_nullable
as int,experimental: null == experimental ? _self.experimental : experimental // ignore: cast_nullable_to_non_nullable
as int,hairless: null == hairless ? _self.hairless : hairless // ignore: cast_nullable_to_non_nullable
as int,natural: null == natural ? _self.natural : natural // ignore: cast_nullable_to_non_nullable
as int,rare: null == rare ? _self.rare : rare // ignore: cast_nullable_to_non_nullable
as int,rex: null == rex ? _self.rex : rex // ignore: cast_nullable_to_non_nullable
as int,suppressedTail: null == suppressedTail ? _self.suppressedTail : suppressedTail // ignore: cast_nullable_to_non_nullable
as int,shortLegs: null == shortLegs ? _self.shortLegs : shortLegs // ignore: cast_nullable_to_non_nullable
as int,wikipediaUrl: freezed == wikipediaUrl ? _self.wikipediaUrl : wikipediaUrl // ignore: cast_nullable_to_non_nullable
as String?,hypoallergenic: null == hypoallergenic ? _self.hypoallergenic : hypoallergenic // ignore: cast_nullable_to_non_nullable
as int,referenceImageId: freezed == referenceImageId ? _self.referenceImageId : referenceImageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Breeds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeightCopyWith<$Res> get weight {
  
  return $WeightCopyWith<$Res>(_self.weight, (value) {
    return _then(_self.copyWith(weight: value));
  });
}
}


/// Adds pattern-matching-related methods to [Breeds].
extension BreedsPatterns on Breeds {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Breeds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Breeds() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Breeds value)  $default,){
final _that = this;
switch (_that) {
case _Breeds():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Breeds value)?  $default,){
final _that = this;
switch (_that) {
case _Breeds() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Weight weight,  String id,  String name,  String? cfaUrl,  String? vetstreetUrl,  String? vcahospitalsUrl,  String temperament,  String origin,  String countryCodes,  String countryCode,  String description,  String lifeSpan,  int indoor,  int? lap,  String? altNames,  int adaptability,  int affectionLevel,  int childFriendly,  int dogFriendly,  int energyLevel,  int grooming,  int healthIssues,  int intelligence,  int sheddingLevel,  int socialNeeds,  int strangerFriendly,  int vocalisation,  int experimental,  int hairless,  int natural,  int rare,  int rex,  int suppressedTail,  int shortLegs,  String? wikipediaUrl,  int hypoallergenic,  String? referenceImageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Breeds() when $default != null:
return $default(_that.weight,_that.id,_that.name,_that.cfaUrl,_that.vetstreetUrl,_that.vcahospitalsUrl,_that.temperament,_that.origin,_that.countryCodes,_that.countryCode,_that.description,_that.lifeSpan,_that.indoor,_that.lap,_that.altNames,_that.adaptability,_that.affectionLevel,_that.childFriendly,_that.dogFriendly,_that.energyLevel,_that.grooming,_that.healthIssues,_that.intelligence,_that.sheddingLevel,_that.socialNeeds,_that.strangerFriendly,_that.vocalisation,_that.experimental,_that.hairless,_that.natural,_that.rare,_that.rex,_that.suppressedTail,_that.shortLegs,_that.wikipediaUrl,_that.hypoallergenic,_that.referenceImageId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Weight weight,  String id,  String name,  String? cfaUrl,  String? vetstreetUrl,  String? vcahospitalsUrl,  String temperament,  String origin,  String countryCodes,  String countryCode,  String description,  String lifeSpan,  int indoor,  int? lap,  String? altNames,  int adaptability,  int affectionLevel,  int childFriendly,  int dogFriendly,  int energyLevel,  int grooming,  int healthIssues,  int intelligence,  int sheddingLevel,  int socialNeeds,  int strangerFriendly,  int vocalisation,  int experimental,  int hairless,  int natural,  int rare,  int rex,  int suppressedTail,  int shortLegs,  String? wikipediaUrl,  int hypoallergenic,  String? referenceImageId)  $default,) {final _that = this;
switch (_that) {
case _Breeds():
return $default(_that.weight,_that.id,_that.name,_that.cfaUrl,_that.vetstreetUrl,_that.vcahospitalsUrl,_that.temperament,_that.origin,_that.countryCodes,_that.countryCode,_that.description,_that.lifeSpan,_that.indoor,_that.lap,_that.altNames,_that.adaptability,_that.affectionLevel,_that.childFriendly,_that.dogFriendly,_that.energyLevel,_that.grooming,_that.healthIssues,_that.intelligence,_that.sheddingLevel,_that.socialNeeds,_that.strangerFriendly,_that.vocalisation,_that.experimental,_that.hairless,_that.natural,_that.rare,_that.rex,_that.suppressedTail,_that.shortLegs,_that.wikipediaUrl,_that.hypoallergenic,_that.referenceImageId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Weight weight,  String id,  String name,  String? cfaUrl,  String? vetstreetUrl,  String? vcahospitalsUrl,  String temperament,  String origin,  String countryCodes,  String countryCode,  String description,  String lifeSpan,  int indoor,  int? lap,  String? altNames,  int adaptability,  int affectionLevel,  int childFriendly,  int dogFriendly,  int energyLevel,  int grooming,  int healthIssues,  int intelligence,  int sheddingLevel,  int socialNeeds,  int strangerFriendly,  int vocalisation,  int experimental,  int hairless,  int natural,  int rare,  int rex,  int suppressedTail,  int shortLegs,  String? wikipediaUrl,  int hypoallergenic,  String? referenceImageId)?  $default,) {final _that = this;
switch (_that) {
case _Breeds() when $default != null:
return $default(_that.weight,_that.id,_that.name,_that.cfaUrl,_that.vetstreetUrl,_that.vcahospitalsUrl,_that.temperament,_that.origin,_that.countryCodes,_that.countryCode,_that.description,_that.lifeSpan,_that.indoor,_that.lap,_that.altNames,_that.adaptability,_that.affectionLevel,_that.childFriendly,_that.dogFriendly,_that.energyLevel,_that.grooming,_that.healthIssues,_that.intelligence,_that.sheddingLevel,_that.socialNeeds,_that.strangerFriendly,_that.vocalisation,_that.experimental,_that.hairless,_that.natural,_that.rare,_that.rex,_that.suppressedTail,_that.shortLegs,_that.wikipediaUrl,_that.hypoallergenic,_that.referenceImageId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: true, fieldRename: FieldRename.snake)
class _Breeds implements Breeds {
  const _Breeds({required this.weight, required this.id, required this.name, this.cfaUrl, this.vetstreetUrl, this.vcahospitalsUrl, required this.temperament, required this.origin, required this.countryCodes, required this.countryCode, required this.description, required this.lifeSpan, required this.indoor, this.lap, this.altNames, required this.adaptability, required this.affectionLevel, required this.childFriendly, required this.dogFriendly, required this.energyLevel, required this.grooming, required this.healthIssues, required this.intelligence, required this.sheddingLevel, required this.socialNeeds, required this.strangerFriendly, required this.vocalisation, required this.experimental, required this.hairless, required this.natural, required this.rare, required this.rex, required this.suppressedTail, required this.shortLegs, this.wikipediaUrl, required this.hypoallergenic, this.referenceImageId});
  factory _Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);

@override final  Weight weight;
@override final  String id;
@override final  String name;
@override final  String? cfaUrl;
@override final  String? vetstreetUrl;
@override final  String? vcahospitalsUrl;
@override final  String temperament;
@override final  String origin;
@override final  String countryCodes;
@override final  String countryCode;
@override final  String description;
@override final  String lifeSpan;
@override final  int indoor;
@override final  int? lap;
@override final  String? altNames;
@override final  int adaptability;
@override final  int affectionLevel;
@override final  int childFriendly;
@override final  int dogFriendly;
@override final  int energyLevel;
@override final  int grooming;
@override final  int healthIssues;
@override final  int intelligence;
@override final  int sheddingLevel;
@override final  int socialNeeds;
@override final  int strangerFriendly;
@override final  int vocalisation;
@override final  int experimental;
@override final  int hairless;
@override final  int natural;
@override final  int rare;
@override final  int rex;
@override final  int suppressedTail;
@override final  int shortLegs;
@override final  String? wikipediaUrl;
@override final  int hypoallergenic;
@override final  String? referenceImageId;

/// Create a copy of Breeds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BreedsCopyWith<_Breeds> get copyWith => __$BreedsCopyWithImpl<_Breeds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BreedsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Breeds&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cfaUrl, cfaUrl) || other.cfaUrl == cfaUrl)&&(identical(other.vetstreetUrl, vetstreetUrl) || other.vetstreetUrl == vetstreetUrl)&&(identical(other.vcahospitalsUrl, vcahospitalsUrl) || other.vcahospitalsUrl == vcahospitalsUrl)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.countryCodes, countryCodes) || other.countryCodes == countryCodes)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.description, description) || other.description == description)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.indoor, indoor) || other.indoor == indoor)&&(identical(other.lap, lap) || other.lap == lap)&&(identical(other.altNames, altNames) || other.altNames == altNames)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.childFriendly, childFriendly) || other.childFriendly == childFriendly)&&(identical(other.dogFriendly, dogFriendly) || other.dogFriendly == dogFriendly)&&(identical(other.energyLevel, energyLevel) || other.energyLevel == energyLevel)&&(identical(other.grooming, grooming) || other.grooming == grooming)&&(identical(other.healthIssues, healthIssues) || other.healthIssues == healthIssues)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.sheddingLevel, sheddingLevel) || other.sheddingLevel == sheddingLevel)&&(identical(other.socialNeeds, socialNeeds) || other.socialNeeds == socialNeeds)&&(identical(other.strangerFriendly, strangerFriendly) || other.strangerFriendly == strangerFriendly)&&(identical(other.vocalisation, vocalisation) || other.vocalisation == vocalisation)&&(identical(other.experimental, experimental) || other.experimental == experimental)&&(identical(other.hairless, hairless) || other.hairless == hairless)&&(identical(other.natural, natural) || other.natural == natural)&&(identical(other.rare, rare) || other.rare == rare)&&(identical(other.rex, rex) || other.rex == rex)&&(identical(other.suppressedTail, suppressedTail) || other.suppressedTail == suppressedTail)&&(identical(other.shortLegs, shortLegs) || other.shortLegs == shortLegs)&&(identical(other.wikipediaUrl, wikipediaUrl) || other.wikipediaUrl == wikipediaUrl)&&(identical(other.hypoallergenic, hypoallergenic) || other.hypoallergenic == hypoallergenic)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,weight,id,name,cfaUrl,vetstreetUrl,vcahospitalsUrl,temperament,origin,countryCodes,countryCode,description,lifeSpan,indoor,lap,altNames,adaptability,affectionLevel,childFriendly,dogFriendly,energyLevel,grooming,healthIssues,intelligence,sheddingLevel,socialNeeds,strangerFriendly,vocalisation,experimental,hairless,natural,rare,rex,suppressedTail,shortLegs,wikipediaUrl,hypoallergenic,referenceImageId]);

@override
String toString() {
  return 'Breeds(weight: $weight, id: $id, name: $name, cfaUrl: $cfaUrl, vetstreetUrl: $vetstreetUrl, vcahospitalsUrl: $vcahospitalsUrl, temperament: $temperament, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, description: $description, lifeSpan: $lifeSpan, indoor: $indoor, lap: $lap, altNames: $altNames, adaptability: $adaptability, affectionLevel: $affectionLevel, childFriendly: $childFriendly, dogFriendly: $dogFriendly, energyLevel: $energyLevel, grooming: $grooming, healthIssues: $healthIssues, intelligence: $intelligence, sheddingLevel: $sheddingLevel, socialNeeds: $socialNeeds, strangerFriendly: $strangerFriendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressedTail: $suppressedTail, shortLegs: $shortLegs, wikipediaUrl: $wikipediaUrl, hypoallergenic: $hypoallergenic, referenceImageId: $referenceImageId)';
}


}

/// @nodoc
abstract mixin class _$BreedsCopyWith<$Res> implements $BreedsCopyWith<$Res> {
  factory _$BreedsCopyWith(_Breeds value, $Res Function(_Breeds) _then) = __$BreedsCopyWithImpl;
@override @useResult
$Res call({
 Weight weight, String id, String name, String? cfaUrl, String? vetstreetUrl, String? vcahospitalsUrl, String temperament, String origin, String countryCodes, String countryCode, String description, String lifeSpan, int indoor, int? lap, String? altNames, int adaptability, int affectionLevel, int childFriendly, int dogFriendly, int energyLevel, int grooming, int healthIssues, int intelligence, int sheddingLevel, int socialNeeds, int strangerFriendly, int vocalisation, int experimental, int hairless, int natural, int rare, int rex, int suppressedTail, int shortLegs, String? wikipediaUrl, int hypoallergenic, String? referenceImageId
});


@override $WeightCopyWith<$Res> get weight;

}
/// @nodoc
class __$BreedsCopyWithImpl<$Res>
    implements _$BreedsCopyWith<$Res> {
  __$BreedsCopyWithImpl(this._self, this._then);

  final _Breeds _self;
  final $Res Function(_Breeds) _then;

/// Create a copy of Breeds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weight = null,Object? id = null,Object? name = null,Object? cfaUrl = freezed,Object? vetstreetUrl = freezed,Object? vcahospitalsUrl = freezed,Object? temperament = null,Object? origin = null,Object? countryCodes = null,Object? countryCode = null,Object? description = null,Object? lifeSpan = null,Object? indoor = null,Object? lap = freezed,Object? altNames = freezed,Object? adaptability = null,Object? affectionLevel = null,Object? childFriendly = null,Object? dogFriendly = null,Object? energyLevel = null,Object? grooming = null,Object? healthIssues = null,Object? intelligence = null,Object? sheddingLevel = null,Object? socialNeeds = null,Object? strangerFriendly = null,Object? vocalisation = null,Object? experimental = null,Object? hairless = null,Object? natural = null,Object? rare = null,Object? rex = null,Object? suppressedTail = null,Object? shortLegs = null,Object? wikipediaUrl = freezed,Object? hypoallergenic = null,Object? referenceImageId = freezed,}) {
  return _then(_Breeds(
weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as Weight,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cfaUrl: freezed == cfaUrl ? _self.cfaUrl : cfaUrl // ignore: cast_nullable_to_non_nullable
as String?,vetstreetUrl: freezed == vetstreetUrl ? _self.vetstreetUrl : vetstreetUrl // ignore: cast_nullable_to_non_nullable
as String?,vcahospitalsUrl: freezed == vcahospitalsUrl ? _self.vcahospitalsUrl : vcahospitalsUrl // ignore: cast_nullable_to_non_nullable
as String?,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,indoor: null == indoor ? _self.indoor : indoor // ignore: cast_nullable_to_non_nullable
as int,lap: freezed == lap ? _self.lap : lap // ignore: cast_nullable_to_non_nullable
as int?,altNames: freezed == altNames ? _self.altNames : altNames // ignore: cast_nullable_to_non_nullable
as String?,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,childFriendly: null == childFriendly ? _self.childFriendly : childFriendly // ignore: cast_nullable_to_non_nullable
as int,dogFriendly: null == dogFriendly ? _self.dogFriendly : dogFriendly // ignore: cast_nullable_to_non_nullable
as int,energyLevel: null == energyLevel ? _self.energyLevel : energyLevel // ignore: cast_nullable_to_non_nullable
as int,grooming: null == grooming ? _self.grooming : grooming // ignore: cast_nullable_to_non_nullable
as int,healthIssues: null == healthIssues ? _self.healthIssues : healthIssues // ignore: cast_nullable_to_non_nullable
as int,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,sheddingLevel: null == sheddingLevel ? _self.sheddingLevel : sheddingLevel // ignore: cast_nullable_to_non_nullable
as int,socialNeeds: null == socialNeeds ? _self.socialNeeds : socialNeeds // ignore: cast_nullable_to_non_nullable
as int,strangerFriendly: null == strangerFriendly ? _self.strangerFriendly : strangerFriendly // ignore: cast_nullable_to_non_nullable
as int,vocalisation: null == vocalisation ? _self.vocalisation : vocalisation // ignore: cast_nullable_to_non_nullable
as int,experimental: null == experimental ? _self.experimental : experimental // ignore: cast_nullable_to_non_nullable
as int,hairless: null == hairless ? _self.hairless : hairless // ignore: cast_nullable_to_non_nullable
as int,natural: null == natural ? _self.natural : natural // ignore: cast_nullable_to_non_nullable
as int,rare: null == rare ? _self.rare : rare // ignore: cast_nullable_to_non_nullable
as int,rex: null == rex ? _self.rex : rex // ignore: cast_nullable_to_non_nullable
as int,suppressedTail: null == suppressedTail ? _self.suppressedTail : suppressedTail // ignore: cast_nullable_to_non_nullable
as int,shortLegs: null == shortLegs ? _self.shortLegs : shortLegs // ignore: cast_nullable_to_non_nullable
as int,wikipediaUrl: freezed == wikipediaUrl ? _self.wikipediaUrl : wikipediaUrl // ignore: cast_nullable_to_non_nullable
as String?,hypoallergenic: null == hypoallergenic ? _self.hypoallergenic : hypoallergenic // ignore: cast_nullable_to_non_nullable
as int,referenceImageId: freezed == referenceImageId ? _self.referenceImageId : referenceImageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Breeds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeightCopyWith<$Res> get weight {
  
  return $WeightCopyWith<$Res>(_self.weight, (value) {
    return _then(_self.copyWith(weight: value));
  });
}
}


/// @nodoc
mixin _$Weight {

 String get imperial; String get metric;
/// Create a copy of Weight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeightCopyWith<Weight> get copyWith => _$WeightCopyWithImpl<Weight>(this as Weight, _$identity);

  /// Serializes this Weight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weight&&(identical(other.imperial, imperial) || other.imperial == imperial)&&(identical(other.metric, metric) || other.metric == metric));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imperial,metric);

@override
String toString() {
  return 'Weight(imperial: $imperial, metric: $metric)';
}


}

/// @nodoc
abstract mixin class $WeightCopyWith<$Res>  {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) _then) = _$WeightCopyWithImpl;
@useResult
$Res call({
 String imperial, String metric
});




}
/// @nodoc
class _$WeightCopyWithImpl<$Res>
    implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._self, this._then);

  final Weight _self;
  final $Res Function(Weight) _then;

/// Create a copy of Weight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imperial = null,Object? metric = null,}) {
  return _then(_self.copyWith(
imperial: null == imperial ? _self.imperial : imperial // ignore: cast_nullable_to_non_nullable
as String,metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Weight].
extension WeightPatterns on Weight {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Weight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Weight() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Weight value)  $default,){
final _that = this;
switch (_that) {
case _Weight():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Weight value)?  $default,){
final _that = this;
switch (_that) {
case _Weight() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imperial,  String metric)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Weight() when $default != null:
return $default(_that.imperial,_that.metric);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imperial,  String metric)  $default,) {final _that = this;
switch (_that) {
case _Weight():
return $default(_that.imperial,_that.metric);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imperial,  String metric)?  $default,) {final _that = this;
switch (_that) {
case _Weight() when $default != null:
return $default(_that.imperial,_that.metric);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: true, fieldRename: FieldRename.snake)
class _Weight implements Weight {
  const _Weight({required this.imperial, required this.metric});
  factory _Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

@override final  String imperial;
@override final  String metric;

/// Create a copy of Weight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeightCopyWith<_Weight> get copyWith => __$WeightCopyWithImpl<_Weight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weight&&(identical(other.imperial, imperial) || other.imperial == imperial)&&(identical(other.metric, metric) || other.metric == metric));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imperial,metric);

@override
String toString() {
  return 'Weight(imperial: $imperial, metric: $metric)';
}


}

/// @nodoc
abstract mixin class _$WeightCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$WeightCopyWith(_Weight value, $Res Function(_Weight) _then) = __$WeightCopyWithImpl;
@override @useResult
$Res call({
 String imperial, String metric
});




}
/// @nodoc
class __$WeightCopyWithImpl<$Res>
    implements _$WeightCopyWith<$Res> {
  __$WeightCopyWithImpl(this._self, this._then);

  final _Weight _self;
  final $Res Function(_Weight) _then;

/// Create a copy of Weight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imperial = null,Object? metric = null,}) {
  return _then(_Weight(
imperial: null == imperial ? _self.imperial : imperial // ignore: cast_nullable_to_non_nullable
as String,metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
