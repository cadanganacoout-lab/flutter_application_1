# XI RPL

Aplikasi mobile untuk mendukung informasi dan dokumentasi kelas XI Rekayasa
Perangkat Lunak (RPL) SMK PGRI 2 Ponorogo. Aplikasi ini dibuat dengan Flutter
dan menyajikan data kelas secara interaktif dalam satu tempat.

## Fitur

- Beranda kelas dengan ringkasan jumlah siswa, guru, wali kelas, dan informasi
  piket.
- Daftar profil siswa dan guru.
- Galeri foto kegiatan kelas.
- Daftar video pembelajaran atau dokumentasi dari YouTube.
- Kartu motivasi pemrograman yang berjalan otomatis.
- Tema terang dan gelap dengan preferensi yang disimpan di perangkat.
- Tampilan responsif berbasis Material 3.
- Layar pembuka dengan identitas dan logo kelas.

## Teknologi

- [Flutter](https://flutter.dev/)
- Dart 3.13.2 atau lebih baru
- Material 3
- `shared_preferences` untuk menyimpan tema
- `youtube_player_flutter` untuk pemutar video
- `flutter_local_notifications` dan `timezone` untuk kebutuhan notifikasi
- `provider` untuk dukungan pengelolaan state

## Persyaratan

Pastikan perangkat pengembangan telah memiliki:

- Flutter SDK yang sudah ditambahkan ke `PATH`
- Dart SDK sesuai dengan versi Flutter yang digunakan
- Android Studio dan Android SDK untuk menjalankan aplikasi di Android
- Xcode untuk target iOS (macOS saja)

Periksa instalasi Flutter dengan:

```bash
flutter doctor
```

## Menjalankan Proyek

1. Clone repository:

   ```bash
   git clone https://github.com/cadanganacoout-lab/flutter_application_1.git
   cd flutter_application_1
   ```

2. Pasang dependency:

   ```bash
   flutter pub get
   ```

3. Hubungkan emulator atau perangkat fisik, kemudian jalankan:

   ```bash
   flutter run
   ```

Untuk melihat perangkat yang tersedia:

```bash
flutter devices
```

## Build

Build APK debug:

```bash
flutter build apk --debug
```

Build APK release:

```bash
flutter build apk --release
```

Build untuk web:

```bash
flutter build web
```

## Struktur Direktori

```text
lib/
├── main.dart              # Entry point dan seluruh tampilan aplikasi
├── data/
│   └── class_data.dart    # Data siswa, guru, jadwal, galeri, dan video
└── models/
    └── app_models.dart    # Model data aplikasi

assets/
├── app_icon.png
└── website/
    ├── galeri/            # Foto galeri kelas
    ├── logo/              # Logo dan aset layar pembuka
    └── profil/            # Foto siswa dan guru
```

## Menambahkan atau Mengubah Data

Data statis kelas berada di `lib/data/class_data.dart`. Aset gambar yang
digunakan aplikasi diletakkan di salah satu direktori `assets/website/` dan
diregistrasikan pada bagian `assets` di `pubspec.yaml` apabila menggunakan
direktori baru.

Untuk menambahkan video YouTube, masukkan ID video dan informasi yang
dibutuhkan ke daftar data video pada file tersebut.

## Pemeriksaan Kode

Jalankan analyzer dan test sebelum membuat perubahan:

```bash
flutter analyze
flutter test
```

## Lisensi

Repository ini dibuat untuk kebutuhan informasi dan dokumentasi internal kelas
XI RPL. Atur lisensi dan izin penggunaan aset sesuai kebutuhan pemilik proyek.
