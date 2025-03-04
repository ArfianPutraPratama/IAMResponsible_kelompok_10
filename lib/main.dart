import 'package:flutter/material.dart'; // Untuk Import library dasar Flutter dan halaman khusus
import 'screens/spescreens.dart'; // mengimport halaman spescreennya agar bisa menampilakan hasilnya

void main() {
  runApp(const MyApp()); // Memulai aplikasi dengan widget MyApp sebagai akar
}

// Widget utama yang mengatur seluruh aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menyembunyikan atau menghilangkan label DEBUG
      title:
          'Flutter Kuliah', // Nama dari aplikasi kita yang ditampilkan di pengaturan perangkat hp
      theme: ThemeData(
        brightness: Brightness.light, // Tema menjadi terang (Light Mode)
        fontFamily: 'Montserrat', // menggunakan font untuk text nya Montserrat
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontWeight: FontWeight
                  .w400), // fungsi untuk menggunakan judul yang huruf besar
          displayMedium: TextStyle(
              fontWeight:
                  FontWeight.w500), // fungsi untuk menggunakan dengan sub judul
          bodyLarge: TextStyle(
              fontWeight: FontWeight
                  .w300), // fungsinya untuk menggunakan text yang panjang
          displaySmall: TextStyle(
              fontWeight: FontWeight
                  .w600), // fungsinya untuk menggunakan text yang kecil (penting)
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Tema menjadi gelap (Dark Mode)
        fontFamily:
            'Montserrat', // menggunakan font untuk text nya Montserrat di mode gelap
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.w400),
          displayMedium: TextStyle(fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontWeight: FontWeight.w300),
          displaySmall: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      themeMode: ThemeMode
          .system, // fungsi ini untuk mengikuti tema yang sedang ada di perangkat
      home: const MyHomePage(
          title:
              'I AM Responsible'), // fungsi ini untuk menampilkan appbar yang ada di atas halaman
    );
  }
}
