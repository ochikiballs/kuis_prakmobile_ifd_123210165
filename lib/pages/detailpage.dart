import 'package:flutter/material.dart';
import 'package:kuis_prakmobile_ifd_rosymaharani/data_buku.dart';

class DetailPage extends StatelessWidget {
  final DataBuku buku;

  const DetailPage({super.key, required this.buku});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(buku.title), // Menggunakan judul buku sebagai judul AppBar
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1, // Jumlah gambar hanya 1 karena gambar buku tunggal
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: Image.network(
                    buku.imageLink, // Menggunakan imageLink dari DataBuku
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  buku.title, // Judul buku
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Author: ${buku.author}'), // Menampilkan nama penulis
                const SizedBox(height: 16),
                Text('Country: ${buku.country}'), // Menampilkan negara
                const SizedBox(height: 16),
                Text('Language: ${buku.language}'), // Menampilkan bahasa
                const SizedBox(height: 16),
                Text('Pages: ${buku.pages.toString()}'), // Menampilkan jumlah halaman
                const SizedBox(height: 16),
                Text('Year: ${buku.year.toString()}'), // Menampilkan tahun terbit
                const SizedBox(height: 16),
                Text('Available: ${buku.isAvailable ? 'Yes' : 'No'}'), // Menampilkan ketersediaan
              ],
            ),
          ),
        ],
      ),
    );
  }
}
