class TryOutEntity {
  final String question;
  final List<String> choiceList;
  final int correctIndex;

  TryOutEntity({
    required this.question,
    required this.choiceList,
    required this.correctIndex,
  });
}

List<TryOutEntity> tryOutList = [
  TryOutEntity(
    question:
        'The number of eight-digit numbers in which each digit is a 1 or 2 but does not contain three consecutive 1s is . . .',
    choiceList: [
      '149',
      '491',
      '199',
      '194',
      '449',
    ],
    correctIndex: 0,
  ),
];
