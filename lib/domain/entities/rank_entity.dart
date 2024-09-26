class RankEntity {
  final String name;
  final int score;

  RankEntity({
    required this.name,
    required this.score,
  });
}

List<RankEntity> rankList = [
  RankEntity(name: 'Pandu Violana Mulya', score: 12000),
  RankEntity(name: 'Nur Ayufauziyah', score: 10075),
  RankEntity(name: 'Derek Hamilton', score: 8750),
  RankEntity(name: 'Siti Humairah', score: 8700),
  RankEntity(name: 'Andy Supandi', score: 6000),
];
