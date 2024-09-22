// import 'package:intl/intl.dart';

class Note {
  final String title;
  final String content;
  final List<String> tags;
  final DateTime createdAt;

  Note({
    required this.title,
    required this.content,
    required this.tags,
  }) : createdAt = DateTime.now();
}

// String get formattedDate {
//   return DateFormat('dd MMM').format(createdAt);
// }

List<Note> noteList = [
  Note(
    title: 'Ide Aplikasi Mobile',
    tags: ['ide', 'programming'],
    content:
        'Menciptakan aplikasi mobile yang dapat membantu pengguna mengatur keuangan pribadi secara otomatis, dengan fitur pengingat untuk pembayaran tagihan dan perencanaan anggaran bulanan.',
  ),
  Note(
    title: 'Belajar Flutter',
    tags: ['programming'],
    content:
        'Mulai mempelajari framework Flutter untuk pengembangan aplikasi mobile. Fokus minggu ini pada dasar-dasar widget, layout, dan state management dengan menggunakan provider.',
  ),
  Note(
    title: 'Catatan Pribadi Harian',
    tags: ['pribadi'],
    content:
        'Hari ini saya merasa lebih produktif setelah mencoba teknik Pomodoro untuk menyelesaikan pekerjaan. Saya juga berjalan-jalan sore untuk menyegarkan pikiran.',
  ),
  Note(
    title: 'Rapat Tim Mingguan',
    tags: ['pekerjaan'],
    content:
        'Rapat tim membahas progres proyek aplikasi e-commerce yang sedang kami kembangkan. Diskusi fokus pada integrasi sistem pembayaran dan pengoptimalan performa aplikasi.',
  ),
  Note(
    title: 'Ide Fitur Aplikasi Catatan',
    tags: ['ide', 'pekerjaan'],
    content:
        'Fitur yang diusulkan: mode gelap, sinkronisasi antar perangkat, dan kemampuan untuk menambahkan tag pada setiap catatan untuk pengelompokan yang lebih baik.',
  ),
  Note(
    title: 'Mengimplementasikan API',
    tags: ['programming'],
    content:
        'Hari ini saya belajar bagaimana mengintegrasikan API ke dalam aplikasi Flutter. Saya menggunakan paket http untuk mengambil data dari server dan menampilkan hasilnya dalam UI.',
  ),
  Note(
    title: 'Rencana Liburan',
    tags: ['pribadi'],
    content:
        'Merencanakan liburan ke Bali bulan depan. Aktivitas yang ingin dilakukan termasuk mengunjungi pantai, snorkeling, dan mengunjungi beberapa kafe yang direkomendasikan teman.',
  ),
  Note(
    title: 'Deadline Proyek',
    tags: ['pekerjaan'],
    content:
        'Proyek pengembangan aplikasi harus selesai minggu depan. Tugas yang tersisa termasuk penyelesaian UI/UX, pengujian aplikasi, dan dokumentasi teknis.',
  ),
  Note(
    title: 'Refaktor Kode dan Ide Startup Teknologi',
    tags: ['programming', 'ide', 'pekerjaan'],
    content:
        'Mulai refaktor kode pada proyek aplikasi untuk meningkatkan performa. Juga mendiskusikan ide startup teknologi baru yang berfokus pada solusi AI untuk otomatisasi pekerjaan kantor, seperti manajemen email dan penjadwalan tugas otomatis.',
  ),
  Note(
    title: 'Ide dan Catatan Pribadi',
    tags: ['ide', 'pribadi'],
    content:
        'Catatan pribadi tentang ide startup teknologi baru dan bagaimana saya dapat menerapkannya dalam kehidupan sehari-hari. Berpikir tentang bagaimana AI dapat mempermudah banyak aspek pekerjaan dan kehidupan.',
  ),
];
