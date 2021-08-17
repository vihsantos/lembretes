class Lembrete {
  final int id;
  final String titulo;
  final String descricao;
  final DateTime data;

  Lembrete({this.id, this.titulo, this.descricao, this.data});
}

List<Lembrete> lembretes = [
  Lembrete(
      id: 0,
      titulo: "Casa",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      id: 1,
      titulo: "Roupas",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      id: 2,
      titulo: "Vida",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      id: 3,
      titulo: "Blábláblá",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      id: 4,
      titulo: "Sonho",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
];
