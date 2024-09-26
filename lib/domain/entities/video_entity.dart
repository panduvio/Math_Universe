class VideoEntity {
  final String name;
  final String subject;
  final String path;
  final String thumbnail;
  final String description;

  VideoEntity({
    required this.name,
    required this.subject,
    required this.path,
    required this.thumbnail,
    required this.description,
  });
}

List<VideoEntity> videoList = [
  VideoEntity(
    name: 'Grafik Fungsi',
    subject: '',
    path: 'assets/video/grafik_fungsi.mp4',
    description:
        'Halo semuanya! Di video ini, kita akan mempelajari tentang salah satu materi pada bab geometri yaitu grafik fungsi. Dengan penjelasan yang sederhana dan visual menarik, kamu akan lebih mudah memahami bagaimana fungsi bekerja dan bagaimana mengaplikasikannya. Selamat belajar dan jangan lupa untuk selalu semangat!',
    thumbnail: 'assets/video/grafik_fungsi.png',
  ),
  VideoEntity(
    name: 'Permutasi & Kombinasi',
    subject: '',
    path: 'assets/video/permutasi_kombinasi.mp4',
    description:
        'Halo semuanya! Di video ini, kita akan mempelajari prinsip penting dalam matematika, yaitu Prinsip Sarang Burung Merpati. Prinsip ini adalah alat yang sangat berguna untuk memecahkan berbagai masalah kombinatorika dan teori bilangan yang sering muncul dalam olimpiade matematika. Jadi, jangan lewatkan kesempatan untuk memperdalam pengetahuanmu dan meningkatkan keterampilan matematikamu!',
    thumbnail: 'assets/video/permutasi_kombinasi.png',
  ),
  VideoEntity(
    name: 'Sarang Burung Merpati',
    subject: '',
    path: 'assets/video/sarang_burung_merpati.mp4',
    description:
        'Halo semuanya! Di video ini, kita akan mempelajari prinsip penting dalam matematika, yaitu Prinsip Sarang Burung Merpati. Prinsip ini adalah alat yang sangat berguna untuk memecahkan berbagai masalah kombinatorika dan teori bilangan yang sering muncul dalam olimpiade matematika. Jadi, jangan lewatkan kesempatan untuk memperdalam pengetahuanmu dan meningkatkan keterampilan matematikamu!',
    thumbnail: 'assets/video/sarang_burung_merpati.png',
  ),
];
