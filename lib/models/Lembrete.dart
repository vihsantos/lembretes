class Lembrete {
  final String titulo;
  final String descricao;
  final DateTime data;

  Lembrete({this.titulo, this.descricao, this.data});
}

List<Lembrete> lembretes = [
  Lembrete(
      titulo: "Casa",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      titulo: "Roupas",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      titulo: "Vida",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      titulo: "Blábláblá",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
  Lembrete(
      titulo: "Sonho",
      descricao: "comprar isso e aquilo, mas aquilo",
      data: DateTime.now()),
];
