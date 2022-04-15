import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';

class LembreteDto extends Lembrete {
  int id;
  String titulo;
  String descricao;
  DateTime datal;
  bool favorito;

  LembreteDto(
      {@required this.id,
      @required this.titulo,
      @required this.descricao,
      @required this.datal,
      @required this.favorito})
      : super(
            id: id,
            titulo: titulo,
            descricao: descricao,
            datal: datal,
            favorito: favorito);

  Map toMap() {
    return {
      "id": this.id,
      "titulo": this.titulo,
      "descricao": this.descricao,
      "datal": this.datal,
      "favorito": this.favorito,
    };
  }

  static LembreteDto fromMap(Map map) {
    return LembreteDto(
      id: map['id'],
      titulo: map['titulo'],
      descricao: map['descricao'],
      datal: DateTime.parse(map['datal']),
      favorito: map['favorito'],
    );
  }
}
