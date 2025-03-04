import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    this.appBarColor = const Color.fromARGB(
        255, 247, 249, 250), // Warna default AppBar warna putih
  });

  final String title;
  final Color appBarColor; // Parameter untuk warna AppBar

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkMode = false; // fungsi untuk melihat status mode gelap/terang

  void toggleTheme() {
    // Fungsi ini untuk digunakan toggle atau switchantara mode gelap dan terang
    setState(() {
      isDarkMode = !isDarkMode; // Toggle mode terang/gelap
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menyembunyikan / menghilangkan label DEBUG
      theme: ThemeData.light(), // fungsi ini untuk mengatur tema terang
      darkTheme: ThemeData.dark(), // fungsi ini untuk mengatur tema gelap
      themeMode: isDarkMode
          ? ThemeMode.dark
          : ThemeMode
              .light, // Mengatur mode berdasarkan gelap atau terangnya menggunakan status
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: isDarkMode
              ? Colors.grey[
                  900] // Warna AppBar untuk mode gelap menjadi abu bau atau gey
              : widget
                  .appBarColor, // Warna AppBar untuk mode terang dengan white default
          centerTitle: true, // jadikanlah judul appbar menjadi rata tengah
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontFamily: 'Montserrat', // mengunakan font dari Montserrat
              color: isDarkMode
                  ? Colors.white
                  : Colors
                      .black, // Warna teks AppBar sesuai dengan mode yang di pilih
            ),
          ),
          actions: [
            IconButton(
              //untuk menekan tombol toggle yang ada di pojok kanan atas appbar untuk menganti warna
              onPressed:
                  toggleTheme, // Fungsi untuk memanggil sebuah dari toggle dengan mode yang akan dipilih
              icon: Icon(
                isDarkMode
                    ? Icons
                        .light_mode // fungsi ini ketika mode Icon matahari di tekan maka mode akan menjadi gelap
                    : Icons
                        .dark_mode, // fungsi ini ketika mode Icon Bulan di tekan maka mode akan menjadi terang
                color: isDarkMode
                    ? Colors.white
                    : Colors
                        .black, // warna icon menjadi secara otoamtis sesuai mode
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(
              16.0), // Memberikan jarak dari semua tepi layar
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .start, // fungsinya untuk mengatur posisi image dari asset menjadi di atas
            children: <Widget>[
              const SizedBox(height: 16), // Jarak setelah AppBar
              Image.asset(
                'assets/images/com.png', // Gambar sesuai yang dimasukkan di pubspec.yaml
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), // Jarak antara gambar dan teks
              Container(
                width: double.infinity, // Mengambil seluruh lebar layar
                height: 150,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? Colors.grey[
                          850] // fungsi ini untuk Warna latar belakang untuk mode gelap
                      : Colors
                          .white, // fungsi ini untuk Warna latar belakang untuk mode terang
                  borderRadius: BorderRadius.circular(
                      20), // jadikanlah mengatur lengkungan dari sudut
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.2), // fungsinnya untuk mengatur bayangan yang ada di bawah shape nya
                      spreadRadius: 6,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '''Ngoding semalaman tak kenal lelah,
Debugging error sampai menyerah.
Untuk Pak Dosen di sebelah saya,
Apakah boleh nilai dikasih A?😁🙏''',
                    textAlign: TextAlign
                        .center, // fungsinya textnya menjadi rata tengah
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight
                          .w300, // menggunakan font yang sudah di gunakan di main.dart
                      fontStyle:
                          FontStyle.italic, // menggunakan style huruf miring
                      color: isDarkMode
                          ? Colors.white
                          : Colors
                              .black, // fungsi ini untuk Warna teks sesuai mode yang dipilih
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
