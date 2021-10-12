import 'package:json_annotation/json_annotation.dart';

part 'Lembrete.g.dart';

@JsonSerializable()
class Lembrete {
  final int id;
  final String titulo;
  final String descricao;
  final DateTime datal;

  Lembrete({this.id, this.titulo, this.descricao, this.datal});

  factory Lembrete.fromJson(Map<String, dynamic> json) =>
      _$LembreteFromJson(json);

  Map<String, dynamic> toJson() => _$LembreteToJson(this);
}
