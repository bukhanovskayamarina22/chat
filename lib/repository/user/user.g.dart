// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      gradient: $enumDecodeNullable(_$GradientsEnumMap, json['gradient']) ??
          Gradients.green,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gradient': _$GradientsEnumMap[instance.gradient]!,
    };

const _$GradientsEnumMap = {
  Gradients.green: 'green',
  Gradients.orange: 'orange',
  Gradients.blue: 'blue',
};
