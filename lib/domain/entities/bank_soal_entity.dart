class BankSoalEntity {
  final String subject;
  final String subSubject;
  final String question;
  final List<String> choiceList;
  final int correctIndex;

  BankSoalEntity({
    required this.subject,
    required this.subSubject,
    required this.question,
    required this.choiceList,
    required this.correctIndex,
  });
}

List<BankSoalEntity> contohSoalList = [
  BankSoalEntity(
    subject: 'Aljabar',
    subSubject: 'Barisan dan Deret',
    question:
        'Jumlah 5 suku pertama deret aritmetika adalah 20. Jika masing-masing suku dikurangi dengan suku ke-3, maka hasil kali suku ke-1, ke-2, ke-4, dan ke-5 adalah 324. Jumlah 8 suku pertama deret tersebut adalah . . .',
    choiceList: [
      '-4 atau 68',
      '-52 atau 116',
      '-64 atau 88',
      '-44 atau 124',
      '-56 atau 138',
    ],
    correctIndex: 1,
  )
];
