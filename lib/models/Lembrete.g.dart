// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Lembrete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lembrete _$LembreteFromJson(Map<String, dynamic> json) {
  return Lembrete(
    id: json['id'] as int,
    titulo: json['titulo'] as String,
    descricao: json['descricao'] as String,
    datal:
        json['datal'] == null ? null : DateTime.parse(json['datal'] as String),
  );
}

Map<String, dynamic> _$LembreteToJson(Lembrete instance) => <String, dynamic>{
      'id': instance.id,
      'titulo': instance.titulo,
      'descricao': instance.descricao,
      'datal': instance.datal?.toIso8601String(),
    };
