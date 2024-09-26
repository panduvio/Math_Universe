class CompetitionEntity {
  final image;
  final caption;

  CompetitionEntity({
    required this.image,
    required this.caption,
  });
}

List<CompetitionEntity> competitionList = [
  CompetitionEntity(
      image: 'assets/competition/airlangga_short_competition.jpg', caption: ''),
  CompetitionEntity(
      image: 'assets/competition/olimpiade_uinsa.jpg', caption: ''),
  CompetitionEntity(
      image: 'assets/competition/olimpiade_uinsatu.jpg', caption: ''),
  CompetitionEntity(image: 'assets/competition/omits_its.jpg', caption: ''),
];
