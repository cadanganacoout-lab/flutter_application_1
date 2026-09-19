// Central application data source.
class PersonData {
  final String name;
  final String role;
  final String image;
  final String hobby;
  final String note;
  const PersonData(
    this.name,
    this.role,
    this.image, {
    this.hobby = '-',
    this.note = '-',
  });
}

class VideoData {
  final String title;
  final String youtubeId;
  final String description;
  const VideoData(this.title, this.youtubeId, {this.description = ''});
}

class GalleryData {
  final String caption;
  final String image;
  const GalleryData(this.caption, this.image);
}

class MottoData {
  final String name;
  final String motto;
  const MottoData(this.name, this.motto);
}

const siteSchoolName = "SMK PGRI 2 PONOROGO";
const siteSchoolShort = "STERIDA";
const siteClassName = "XI RPL ";
const siteMajorName = "Rekayasa Perangkat Lunak";
const siteTotalStudents = 33;
const siteTotalTeachers = 15;
const siteWaliKelas = "Andies Pramudiyantoro, S.Kom";

const motivations = <String>[
  "Kode yang bersih lahir dari niat yang jujur.",
  "Debug hari ini adalah cerita sukses developer esok hari.",
  "Setiap error adalah petunjuk, bukan jalan buntu.",
  "RPL bukan soal menghafal sintaks, tapi soal cara berpikir.",
  "Belajar logika hari ini, bangun sistem besar suatu hari nanti.",
  "Satu baris kode, satu langkah lebih dekat ke solusi.",
  "Programmer hebat lahir dari ribuan kali mencoba lagi.",
  "Jangan takut merah di terminal, takutlah tidak pernah mencoba.",
  "Kolaborasi seperti git merge: butuh komunikasi, bukan ego.",
  "Fitur boleh selesai, belajar tidak pernah 'commit' terakhir.",
];

const students = <PersonData>[
  PersonData("Affandi Fathufrahman", "Siswa", "", hobby: "Basket", note: "-"),
  PersonData(
    "Ahmad Barak Neilfadli Hardiansyah",
    "Siswa",
    "",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Alecia Poppy Shakira Ayu Kirana",
    "Siswa",
    "",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Alexa Aditya Cindra Dewi",
    "Seketaris",
    "",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Amanda Cinthya Kasih",
    "Seketaris dan presensi",
    "assets/website/profil/manda.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData("Ardila Wahyuning Putri", "Siswa", "", hobby: "-", note: "-"),

  PersonData(
    "Aretha Maulina Noviatin",
    "Siswa",
    "assets/website/profil/aretha.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData("Atha Tandagra Suryansyah", "Siswa", "", hobby: "-", note: "-"),

  PersonData(
    "Bagas Ardiansyah",
    "Siswa",
    "assets/website/profil/bagas.jpeg",
    hobby: "PENCOLI KARAKTER ANIME",
    note: "-",
  ),

  PersonData("Candy Al Azka", "Siswa", "", hobby: "-", note: "-"),

  PersonData("Celsia Ramadhani", "Siswa", "", hobby: "-", note: "-"),

  PersonData(
    "Dimas Riang Ilham Saputra",
    "Siswa",
    "assets/website/profil/dimas.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Diva Ayu Permata",
    "Siswa",
    "assets/website/profil/diva.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Ena Zivana Idelia Gita",
    "Siswa",
    "assets/website/profil/ena.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Ficko Adiputra Perdana",
    "Ketua Kelas",
    "",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Gayuh Gita Yulia Natasya",
    "Siswa",
    "assets/website/profil/gita.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Gilang Nur Maulida Faid",
    "Siswa (Admin)",
    "assets/website/profil/gilang.jpg",
    hobby: "Belajar Hal Baru",
    note: "Saya suka Membaca hal-hal baru.",
  ),

  PersonData(
    "Helcia Andika Putri",
    "Siswa",
    "assets/website/profil/helcia.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Hedri Setiawan",
    "Persensi Kelas",
    "assets/website/profil/hendri.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Ilham Rofig Ananda Barocta",
    "Siswa",
    "assets/website/profil/rofig.jpeg",
    hobby: "GAME, GAUSAH DITANYA",
    note: "ORANG GANGGUAN JIWA YANG LEPAS",
  ),

  PersonData(
    "Julian Tri Pratama",
    "Siswa",
    "assets/website/profil/julian.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Kenza Pratama",
    "Siswa",
    "assets/website/profil/kenza.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Khaula Nendra Sukma Athafarel",
    "Siswa",
    "",
    hobby: "-",
    note: "-",
  ),

  PersonData("Meta Evilya Giovany", "Siswa", "", hobby: "-", note: "-"),

  PersonData(
    "Muhamad Akbar Fikriansyah",
    "Siswa",
    "assets/website/profil/akbar.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Nabila' Atha Nur Al Fiyah",
    "Siswa",
    "assets/website/profil/nabila.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Nurul Safika",
    "Siswa",
    "assets/website/profil/narji.jpg",
    hobby: "-",
    note: "-",
  ),

  PersonData(
    "Ragil Bagus Nugroho",
    "Bendahara",
    "assets/website/profil/ragilb.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData("Ragil Satria Risdiyanto", "Siswa", "", hobby: "-", note: "-"),

  PersonData(
    "Relyta Triya Ayu Lestari",
    "Siswa",
    "",
    hobby: "-",
    note: "- mencatat rangkuman pelajaran.",
  ),

  PersonData(
    "Rifky Aditya Saputra",
    "Siswa",
    "assets/website/profil/rifki.jpeg",
    hobby: "-",
    note: "-",
  ),

  PersonData("Satria Pradika Bayu Pratama", "Siswa", "", hobby: "-", note: "-"),

  PersonData(
    "Sultan Pasha Ibrahim Sukarno",
    "Seketaris",
    "",
    hobby: "-",
    note: "-",
  ),
];

const teachers = <PersonData>[
  PersonData("Ema Dwi Novita, S.Pd", "Matematika", ""),
  PersonData("Edlin Vivi Muratrie, S.Pd", "Sejarah Indonesia", ""),
  PersonData("Linda Savitri, S.Pd", "Kewirausahaan", ""),
  PersonData("Afrida Vidiyastuti, S.Pd", "Bahasa Inggris", ""),
  PersonData("Zainul Arifin, S. Ag, M.PdI", "Pendidikan Agama", ""),
  PersonData("Viska Kholifatul Ummah, S.Pd", "Bahasa Indonesia", ""),
  PersonData("Anies Kurniawati, S.Pd", "Bahasa Jawa", ""),
  PersonData("Samsu Nur Zamaniyanto, S.Pd", "PJOK", ""),
  PersonData("Mita Argawati, S.Pd", "Pendidikan Pancasila", ""),
  PersonData("Mutia Dwi Zulfana, S. Pd.", "Bimbingan Konseling", ""),
  PersonData(
    "Andies Pramudiyantoro, S.Kom",
    "Pemrograman Perangkat Bergerak",
    "assets/website/profil/pak andies.png",
  ),
  PersonData(
    "Endy Bagus Setyawan R. S.Kom",
    "Administrasi Infrastruktur Jaringan",
    "assets/website/profil/pak endy.jpg",
  ),
  PersonData("Muh. Faqihuddin Assholih, S.Kom", "Basis Data", ""),
  PersonData(
    "Hendrik Dwi Yusyanto, S.Kom",
    "Pemrograman Berorientasi Objek",
    "",
  ),
  PersonData(
    "Ridwan Mudakir, S.Kom",
    "Pemrograman Dasar",
    "assets/website/profil/pak ridwan.jpg",
  ),
];

const piketByDay = <String, List<String>>{

  "senin": [
  "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],

  "selasa": [
    "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],

  "rabu": [
    "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],

  "kamis": [
    "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],

  "jumat": [
    "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],

  "sabtu": [
    "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],

  "minggu": [
    "Tidak ada jadwal piket, Kelas XI RPL Sedang PKL.",
  ],
  // "Senin": [
  //   "Alexa Aditya Cindra Dewi",
  //   "Aretha Maulina Noviatin",
  //   "Atha Tandagra Suryansyah",
  //   "Gilang Nur Maulida Faid",
  //   "Nurul Safika",
  // ],
  // "Selasa": [
  //   "Relyta Triya Ayu Lestari",
  //   "Celsia Ramadhani",
  //   "Ragil Satria Risdiyanto",
  //   "Julian Tri Pratama",
  //   "Satria Pradika Bayu Pratama",
  //   "Rifky Aditya Saputra",
  // ],
  // "Rabu": [
  //   "Alecia Poppy Shakira Ayu Kirana",
  //   "Diva Ayu Permata",
  //   "Meta Evilya Giovany",
  //   "Muhamad Akbar Fikriansyah",
  //   "Dimas Riang Ilham Saputra",
  //   "Ragil Bagus Nugroho",
  // ],
  // "Kamis": [
  //   "Gayuh Gita Yulia Natasya",
  //   "Helcia Andika Putri",
  //   "Hedri Setiawan",
  //   "Sultan Pasha Ibrahim Sukarno",
  //   "Kenza Pratama",
  // ],
  // "Jumat": [
  //   "Ardila Wahyuning Putri",
  //   "Candy Al Azka",
  //   "Ahmad Barak Neilfadli Hardiansyah",
  //   "Bagas Ardiansyah",
  //   "Ficko Adiputra Perdana",
  // ],
  // "Sabtu": [
  //   "Amanda Cinthya Kasih",
  //   "Ena Zivana Idelia Gita",
  //   "Nabila' Atha Nur Al Fiyah",
  //   "Affandi Fathufrahman",
  //   "Ilham Rofig Ananda Barocta",
  //   "Khaula Nendra Sukma Athafarel",
  // ],
  // "Minggu": ["tidak ada jadwal piket hari ini."],
};

const galleryItems = <GalleryData>[
  GalleryData(
    "Kunjungan Industri, Tour Tempat Wisata.",
    "assets/website/galeri/1.webp",
  ),
  GalleryData("Kunjungan ke Gamelab Indonesia", "assets/website/galeri/2.webp"),
  GalleryData("Kerumah Wali Kelas XI RPL 1", "assets/website/galeri/3.webp"),
  GalleryData("Bintalsik", "assets/website/galeri/4.webp"),
  GalleryData("Mujahadah dan Doa Bersama", "assets/website/galeri/5.webp"),
  GalleryData("Bintalsik", "assets/website/galeri/6.webp"),
  GalleryData("Aststragraphia Kelas X RPL", "assets/website/galeri/7.webp"),
  GalleryData("Foto bersama di lapangan", "assets/website/galeri/8.webp"),
  GalleryData("Bintalsik", "assets/website/galeri/9.webp"),
  GalleryData("With The Only One Pak Endy", "assets/website/galeri/10.webp"),
  GalleryData("Foto bersama", "assets/website/galeri/11.webp"),
  GalleryData("Mujahadah dan Doa Bersama", "assets/website/galeri/12.webp"),
  GalleryData("Pondok Putri", "assets/website/galeri/13.webp"),
  GalleryData("Orang-oraang Tantrum", "assets/website/galeri/14.webp"),
  GalleryData("MPLS", "assets/website/galeri/15.webp"),
  GalleryData("Buka Bersama Kelas X RPL", "assets/website/galeri/16.webp"),
  GalleryData("Pondok Putra", "assets/website/galeri/17.webp"),
  GalleryData("Lebaran di rumah wali kelas", "assets/website/galeri/18.webp"),
  GalleryData("Lebaran di rumah wali kelas", "assets/website/galeri/19.webp"),
  GalleryData("Lebaran di rumah wali kelas", "assets/website/galeri/20.webp"),
  GalleryData("Lebaran di rumah wali kelas", "assets/website/galeri/21.webp"),
  GalleryData("Orang-orang Stress", "assets/website/galeri/22.webp"),
  GalleryData("Takbir Keliling", "assets/website/galeri/23.webp"),
  GalleryData("Takbir Keliling", "assets/website/galeri/24.webp"),
  GalleryData("Takbir Keliling", "assets/website/galeri/25.webp"),
  GalleryData("Takbir Keliling", "assets/website/galeri/26.webp"),
  GalleryData("With Bu emma", "assets/website/galeri/27.webp"),
  GalleryData("The RPL Boys", "assets/website/galeri/28.webp"),
  GalleryData("With Bu emma", "assets/website/galeri/29.webp"),
  GalleryData("Fotbar", "assets/website/galeri/30.webp"),
  GalleryData("Renang", "assets/website/galeri/31.webp"),
  GalleryData("Fotbar", "assets/website/galeri/32.webp"),
  GalleryData("Renang", "assets/website/galeri/33.webp"),
  GalleryData("Renang", "assets/website/galeri/34.webp"),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 1",
    "assets/website/galeri/35.webp",
  ),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 2",
    "assets/website/galeri/36.webp",
  ),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 3",
    "assets/website/galeri/37.webp",
  ),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 4",
    "assets/website/galeri/38.webp",
  ),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 5",
    "assets/website/galeri/39.webp",
  ),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 6",
    "assets/website/galeri/40.webp",
  ),
  GalleryData(
    "Dokumentasi kegiatan bersama PT Astragraphia - foto 7",
    "assets/website/galeri/41.webp",
  ),
  GalleryData("With Bu emma - foto 1", "assets/website/galeri/42.webp"),
  GalleryData("With Bu emma - foto 2", "assets/website/galeri/45.webp"),
  GalleryData("With Bu Viska - foto 1", "assets/website/galeri/44.webp"),
  GalleryData("With Bu Viska - foto 2", "assets/website/galeri/43.webp"),
  GalleryData("Bakar Before PKL - Foto 1", "assets/website/galeri/46.webp"),
  GalleryData("Bakar Before PKL - Foto 2", "assets/website/galeri/47.webp"),
  GalleryData("Bakar Before PKL - Foto 3", "assets/website/galeri/48.webp"),
];

const videos = <VideoData>[
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 2",
    "m8PGMHXMstw",
    description: "Terima kasih telah menonton. Jangan lupa memberikan dukungan dan masukan yang membangun. Selamat menyaksikan! 🎙️",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 3",
    "fomuBMTB5hs",
    description: "Pada video podcast kali ini, kelompok kami membahas topik yang menarik dan bermanfaat untuk menambah wawasan. Melalui diskusi santai namun informatif, kami saling bertukar pendapat, memberikan penjelasan, serta menyampaikan informasi terkait materi yang telah dipelajari.",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 5",
    "4Mul3bb4_WI",
    description: "Podcast ini dibuat sebagai bagian dari tugas kelompok untuk melatih kemampuan komunikasi, kerja sama tim, serta pemahaman materi. Semoga pembahasan yang kami sajikan dapat memberikan manfaat dan menambah pengetahuan bagi para penonton.",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 1",
    "9ujA_ZNEcRc",
    description: "Terima kasih telah menonton. Jangan lupa memberikan dukungan dan masukan yang membangun. Selamat menyaksikan! 🎙️",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 6",
    "Vk_uDWUSOuo",
    description: "Podcast ini dibuat sebagai bagian dari tugas kelompok untuk melatih kemampuan komunikasi, kerja sama tim, serta pemahaman materi. Semoga pembahasan yang kami sajikan dapat memberikan manfaat dan menambah pengetahuan bagi para penonton.",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 7",
    "4rU3nFkvipQ",
    description: "Pada video podcast kali ini, kelompok kami membahas topik yang menarik dan bermanfaat untuk menambah wawasan. Melalui diskusi santai namun informatif, kami saling bertukar pendapat, memberikan penjelasan, serta menyampaikan informasi terkait materi yang telah dipelajari.",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 8",
    "mdycE2tlPX4",
    description: "Podcast ini dibuat sebagai bagian dari tugas kelompok untuk melatih kemampuan komunikasi, kerja sama tim, serta pemahaman materi. Semoga pembahasan yang kami sajikan dapat memberikan manfaat dan menambah pengetahuan bagi para penonton.",
  ),
  VideoData(
    "TUGAS IPAS, PODCAST REMAJA STERIDA-KELOMPOK 4",
    "meDKTZ1YdEo",
    description: "Terima kasih telah menonton. Jangan lupa memberikan dukungan dan masukan yang membangun. Selamat menyaksikan! 🎙️",
  ),
  VideoData(
    "TUGAS INFORMATIKA, KOKURIKULER ECOPRINT-KELOMPOK 6",
    "JSjp0qdOrhU",
    description: "Dokumentasi tugas ecoprint kelompok 6 dalam kegiatan kokurikuler Informatika.",
  ),
  VideoData(
    "TUGAS INFORMATIKA, KOKURIKULER ECOPRINT-KELOMPOK 4",
    "1dzLr_jYjSk",
    description: "Dokumentasi tugas ecoprint kelompok 4 dalam kegiatan kokurikuler Informatika.",
  ),
  VideoData(
    "TUGAS INFORMATIKA, KOKURIKULER ECOPRINT-KELOMPOK 2",
    "eZfZ70p2d40",
    description: "Ecoprint adalah teknik mencetak motif pada kain dengan memanfaatkan bahan-bahan alami seperti daun, bunga, batang, atau bagian tumbuhan lainnya. Proses ini dilakukan dengan cara menempelkan bahan alami ke permukaan kain, kemudian ditekan atau dipukul, dikukus, atau direbus agar warna dan bentuk alaminya berpindah ke kain.",
  ),
  VideoData(
    "TUGAS INFORMATIKA, KOKURIKULER ECOPRINT-KELOMPOK 3",
    "PjFZoJ6tjcE",
    description: "Ecoprint termasuk dalam kerajinan ramah lingkungan karena tidak menggunakan bahan kimia berbahaya, melainkan memanfaatkan pigmen alami dari tumbuhan. Setiap hasil ecoprint bersifat unik karena bentuk, warna, dan susunan daun tidak pernah sama.",
  ),
  VideoData(
    "TUGAS INFORMATIKA, KOKURIKULER ECOPRINT-KELOMPOK 5",
    "RBJ51JXEsCE",
    description: "Secara umum, ecoprint tidak hanya menghasilkan karya seni yang indah, tetapi juga menjadi bentuk pemanfaatan alam secara bijak serta mendukung konsep keberlanjutan",
  ),
  VideoData(
    "TUGAS INFORMATIKA, KOKURIKULER ECOPRINT-KELOMPOK 1",
    "as5K6CLsZ3U",
    description: "Dokumentasi tugas ecoprint kelompok 1 dalam kegiatan kokurikuler Informatika.",
  ),
  VideoData(
    "TUGAS SENAM IRAMA PJOK, -KELOMPOK 3-",
    "_37Q372oCN0",
    description: "Dokumentasi tugas senam irama PJOK kelompok 3.",
  ),
  VideoData(
    "TUGAS SENAM IRAMA PJOK, -KELOMPOK 1-",
    "4d_gBm2nfeE",
    description: "Dokumentasi tugas senam irama PJOK kelompok 1.",
  ),
  VideoData(
    "TUGAS SENAM IRAMA PJOK, -KELOMPOK 5-",
    "lY4tZ2UVyQ4",
    description: "Dokumentasi tugas senam irama PJOK kelompok 5.",
  ),
  VideoData(
    "TUGAS SENAM IRAMA PJOK, -KELOMPOK 2-",
    "WTjDbSP8ra4",
    description: "Dokumentasi tugas senam irama PJOK kelompok 2.",
  ),
  VideoData(
    "TUGAS SENAM IRAMA PJOK, -KELOMPOK 4-",
    "TWaH1cEmxS4",
    description: "Dokumentasi tugas senam irama PJOK kelompok 4.",
  ),
];

class ScheduleRow {
  final String time;
  final String subject;
  final String teacher;
  final String code;
  final bool isBreak;
  const ScheduleRow(
    this.time,
    this.subject,
    this.teacher,
    this.code, {
    this.isBreak = false,
  });
}

const scheduleByParity = <String, Map<String, List<ScheduleRow>>>{
  "ganjil": {
    "Senin": [
      ScheduleRow("06:45-07:30", "Upacara Bendera", "-", '#0'),
      ScheduleRow("07:30-08:05", "Matematika", "Ema Dwi Novita, S.Pd", '#1'),
      ScheduleRow("08:05-08:40", "Matematika", "Ema Dwi Novita, S.Pd", '#2'),
      ScheduleRow("08:40-09:15", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "09:15-09:55",
        "Sejarah Indonesia",
        "Edlin Vivi Muratrie, S.Pd",
        '#3',
      ),
      ScheduleRow(
        "09:55-10:35",
        "Sejarah Indonesia",
        "Edlin Vivi Muratrie, S.Pd",
        '#4',
      ),
      ScheduleRow(
        "10:35-11:15",
        "Kreativitas Inovasi & Kewirausahaan",
        "Linda Savitri, S.Pd",
        '#5',
      ),
      ScheduleRow(
        "11:15-11:55",
        "Kreativitas Inovasi & Kewirausahaan",
        "Linda Savitri, S.Pd",
        '#6',
      ),
      ScheduleRow("11:55-12:40", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:40-13:20",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#7',
      ),
      ScheduleRow(
        "13:20-14:00",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#8',
      ),
    ],
    "Selasa": [
      ScheduleRow(
        "06:45-07:30",
        "Pendidikan Agama Budi Pekerti",
        "Zainul Arifin, S. Ag, M.PdI",
        '#1',
      ),
      ScheduleRow(
        "07:30-08:15",
        "Pendidikan Agama Budi Pekerti",
        "Zainul Arifin, S. Ag, M.PdI",
        '#2',
      ),
      ScheduleRow("08:15-08:50", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "08:50-09:33",
        "Bahasa Indonesia",
        "Viska Kholifatul Ummah, S.Pd",
        '#3',
      ),
      ScheduleRow(
        "09:33-10:16",
        "Bahasa Indonesia",
        "Viska Kholifatul Ummah, S.Pd",
        '#4',
      ),
      ScheduleRow("10:16-11:00", "Matematika", "Ema Dwi Novita, S.Pd", '#5'),
      ScheduleRow("11:00-11:45", "Matematika", "Ema Dwi Novita, S.Pd", '#6'),
      ScheduleRow("11:45-12:30", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:30-13:15",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#7',
      ),
      ScheduleRow(
        "13:15-14:00",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#8',
      ),
    ],
    "Rabu": [
      ScheduleRow(
        "06:45-07:30",
        "Bahasa Indonesia",
        "Viska Kholifatul Ummah, S.Pd",
        '#1',
      ),
      ScheduleRow(
        "07:30-08:15",
        "Bahasa Indonesia",
        "Viska Kholifatul Ummah, S.Pd",
        '#2',
      ),
      ScheduleRow("08:15-08:50", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "08:50-09:33",
        "Pendidikan Agama Budi Pekerti",
        "Zainul Arifin, S. Ag, M.PdI",
        '#3',
      ),
      ScheduleRow(
        "09:33-10:16",
        "Pendidikan Agama Budi Pekerti",
        "Zainul Arifin, S. Ag, M.PdI",
        '#4',
      ),
      ScheduleRow(
        "10:16-11:00",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#5',
      ),
      ScheduleRow(
        "11:00-11:45",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#6',
      ),
      ScheduleRow("11:45-12:30", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow("12:30-13:15", "Bahasa Jawa", "Anies Kurniawati, S.Pd", '#7'),
      ScheduleRow("13:15-14:00", "Bahasa Jawa", "Anies Kurniawati, S.Pd", '#8'),
    ],
    "Kamis": [
      ScheduleRow(
        "06:45-07:30",
        "Bahasa Indonesia",
        "Viska Kholifatul Ummah, S.Pd",
        '#1',
      ),
      ScheduleRow(
        "07:30-08:15",
        "Bahasa Indonesia",
        "Viska Kholifatul Ummah, S.Pd",
        '#2',
      ),
      ScheduleRow("08:15-08:50", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "08:50-09:33",
        "Pendidikan Jasmani Olahraga Kesehatan",
        "Samsu Nur Zamaniyanto, S.Pd",
        '#3',
      ),
      ScheduleRow(
        "09:33-10:16",
        "Pendidikan Jasmani Olahraga Kesehatan",
        "Samsu Nur Zamaniyanto, S.Pd",
        '#4',
      ),
      ScheduleRow("10:16-11:00", "Matematika", "Ema Dwi Novita, S.Pd", '#5'),
      ScheduleRow("11:00-11:45", "Matematika", "Ema Dwi Novita, S.Pd", '#6'),
      ScheduleRow("11:45-12:30", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:30-13:15",
        "Sejarah Indonesia",
        "Edlin Vivi Muratrie, S.Pd",
        '#7',
      ),
      ScheduleRow(
        "13:15-14:00",
        "Sejarah Indonesia",
        "Edlin Vivi Muratrie, S.Pd",
        '#8',
      ),
    ],
    "Jumat": [
      ScheduleRow(
        "06:45-07:10",
        "Pendidikan Pancasila",
        "Mita Argawati, S.Pd",
        '#1',
      ),
      ScheduleRow(
        "07:10-07:35",
        "Pendidikan Pancasila",
        "Mita Argawati, S.Pd",
        '#2',
      ),
      ScheduleRow("07:35-08:00", "Bahasa Jawa", "Anies Kurniawati, S.Pd", '#3'),
      ScheduleRow("08:00-08:25", "Bahasa Jawa", "Anies Kurniawati, S.Pd", '#4'),
      ScheduleRow("08:25-09:00", "Istirahat", '', 'break', isBreak: true),
      ScheduleRow(
        "09:00-09:30",
        "Kreativitas Inovasi & Kewirausahaan",
        "Linda Savitri, S.Pd",
        '#5',
      ),
      ScheduleRow(
        "09:30-10:00",
        "Kreativitas Inovasi & Kewirausahaan",
        "Linda Savitri, S.Pd",
        '#6',
      ),
      ScheduleRow(
        "10:00-10:30",
        "Bimbingan Konseling",
        "Mutia Dwi Zulfana, S. Pd.",
        '#7',
      ),
      ScheduleRow(
        "10:30-11:00",
        "Bimbingan Konseling",
        "Mutia Dwi Zulfana, S. Pd.",
        '#8',
      ),
    ],
    "Sabtu": [
      ScheduleRow(
        "06:45-07:15",
        "Pendidikan Jasmani Olahraga Kesehatan",
        "Samsu Nur Zamaniyanto, S.Pd",
        '#1',
      ),
      ScheduleRow(
        "07:15-07:45",
        "Pendidikan Jasmani Olahraga Kesehatan",
        "Samsu Nur Zamaniyanto, S.Pd",
        '#2',
      ),
      ScheduleRow(
        "07:45-08:15",
        "Pendidikan Pancasila",
        "Mita Argawati, S.Pd",
        '#3',
      ),
      ScheduleRow(
        "08:15-08:45",
        "Pendidikan Pancasila",
        "Mita Argawati, S.Pd",
        '#4',
      ),
      ScheduleRow("08:45-09:00", "Istirahat", '', 'break', isBreak: true),
      ScheduleRow(
        "09:00-09:30",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#5',
      ),
      ScheduleRow(
        "09:30-10:00",
        "Bahasa Inggris",
        "Afrida Vidiyastuti, S.Pd",
        '#6',
      ),
    ],
    "Minggu": [ScheduleRow("tidak ada jadwal", "", "", '', isBreak: true)],
  },
  "genap": {
    "Senin": [
      ScheduleRow(
        "06:45-07:30",
        "Upacara Bendera",
        "Andies Pramudiyantoro, S.Kom",
        '#0',
      ),
      ScheduleRow(
        "07:30-08:05",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#1',
      ),
      ScheduleRow(
        "08:05-08:40",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#2',
      ),
      ScheduleRow("08:40-09:15", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "09:15-09:55",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#3',
      ),
      ScheduleRow(
        "09:55-10:35",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#4',
      ),
      ScheduleRow(
        "10:35-11:15",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#5',
      ),
      ScheduleRow(
        "11:15-11:55",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#6',
      ),
      ScheduleRow("11:55-12:40", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:40-13:20",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#7',
      ),
      ScheduleRow(
        "13:20-14:00",
        "Konsentrasi Keahlian RPL",
        "Andies Pramudiyantoro, S.Kom",
        '#8',
      ),
    ],
    "Selasa": [
      ScheduleRow(
        "06:45-07:30",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#1',
      ),
      ScheduleRow(
        "07:30-08:15",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#2',
      ),
      ScheduleRow("08:15-08:50", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "08:50-09:33",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#3',
      ),
      ScheduleRow(
        "09:33-10:16",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#4',
      ),
      ScheduleRow(
        "10:16-11:00",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#5',
      ),
      ScheduleRow(
        "11:00-11:45",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#6',
      ),
      ScheduleRow("11:45-12:30", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:30-13:15",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#7',
      ),
      ScheduleRow(
        "13:15-14:00",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#8',
      ),
    ],
    "Rabu": [
      ScheduleRow(
        "06:45-07:30",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#1',
      ),
      ScheduleRow(
        "07:30-08:15",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#2',
      ),
      ScheduleRow("08:15-08:50", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "08:50-09:33",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#3',
      ),
      ScheduleRow(
        "09:33-10:16",
        "Konsentrasi Keahlian RPL",
        "Endy Bagus Setyawan R. S.Kom",
        '#4',
      ),
      ScheduleRow(
        "10:16-11:00",
        "Konsentrasi Keahlian RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#5',
      ),
      ScheduleRow(
        "11:00-11:45",
        "Konsentrasi Keahlian RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#6',
      ),
      ScheduleRow("11:45-12:30", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:30-13:15",
        "Konsentrasi Keahlian RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#7',
      ),
      ScheduleRow(
        "13:15-14:00",
        "Konsentrasi Keahlian RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#8',
      ),
    ],
    "Kamis": [
      ScheduleRow(
        "06:45-07:30",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#1',
      ),
      ScheduleRow(
        "07:30-08:15",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#2',
      ),
      ScheduleRow("08:15-08:50", "Istirahat I", '', 'break', isBreak: true),
      ScheduleRow(
        "08:50-09:33",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#3',
      ),
      ScheduleRow(
        "09:33-10:16",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#4',
      ),
      ScheduleRow(
        "10:16-11:00",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#5',
      ),
      ScheduleRow(
        "11:00-11:45",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#6',
      ),
      ScheduleRow("11:45-12:30", "Istirahat II", '', 'break', isBreak: true),
      ScheduleRow(
        "12:30-13:15",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#7',
      ),
      ScheduleRow(
        "13:15-14:00",
        "Konsentrasi Keahlian RPL",
        "Hendrik Dwi Yusyanto, S.Kom",
        '#8',
      ),
    ],
    "Jumat": [
      ScheduleRow(
        "06:45-07:10",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#1',
      ),
      ScheduleRow(
        "07:10-07:35",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#2',
      ),
      ScheduleRow(
        "07:35-08:00",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#3',
      ),
      ScheduleRow(
        "08:00-08:25",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#4',
      ),
      ScheduleRow("08:25-09:00", "Istirahat", '', 'break', isBreak: true),
      ScheduleRow(
        "09:00-09:30",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#5',
      ),
      ScheduleRow(
        "09:30-10:00",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#6',
      ),
      ScheduleRow(
        "10:00-10:30",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#7',
      ),
      ScheduleRow(
        "10:30-11:00",
        "Konsentrasi Keahlian RPL",
        "Ridwan Mudakir, S.Kom",
        '#8',
      ),
    ],
    "Sabtu": [
      ScheduleRow(
        "06:45-07:15",
        "Mata Pelajaran Pilihan RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#1',
      ),
      ScheduleRow(
        "07:15-07:45",
        "Mata Pelajaran Pilihan RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#2',
      ),
      ScheduleRow(
        "07:45-08:15",
        "Mata Pelajaran Pilihan RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#3',
      ),
      ScheduleRow(
        "08:15-08:45",
        "Mata Pelajaran Pilihan RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#4',
      ),
      ScheduleRow("08:45-09:00", "Istirahat", '', 'break', isBreak: true),
      ScheduleRow(
        "09:00-09:30",
        "Mata Pelajaran Pilihan RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#5',
      ),
      ScheduleRow(
        "09:30-10:00",
        "Mata Pelajaran Pilihan RPL",
        "Muh. Faqihuddin Assholih, S.Kom",
        '#6',
      ),
    ],
    "Minggu": [ScheduleRow("tidak ada jadwal", "", "", '', isBreak: true)],
  },
};
