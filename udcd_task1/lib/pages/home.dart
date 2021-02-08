import 'package:flutter/material.dart';
import 'package:udcd_task1/data/post_data.dart';
import 'package:udcd_task1/widgets/post_item.dart';

class HomePage extends StatelessWidget {
  List<PostData> datas = [
    PostData(
      initialName: "W",
      title: "Apa itu Dart?",
      content:
          "Dart adalah bahasa pemrograman yang dioptimalkan untuk klien untuk aplikasi di berbagai platform. Ini dikembangkan oleh Google dan digunakan untuk membangun aplikasi seluler, desktop, server, dan web. Dart adalah bahasa berorientasi objek, berbasis kelas, dan dikumpulkan dari sampah dengan sintaks gaya C.",
      date: "26 Januari 2021",
    ),
    PostData(
      initialName: "W",
      title: "Apa itu Flutter?",
      content:
          "Flutter adalah sebuah framework aplikasi mobil sumber terbuka yang diciptakan oleh Google. Flutter digunakan dalam pengembangan aplikasi untuk sistem operasi Android, iOS, Windows, Linux, MacOS, serta menjadi metode utama untuk membuat aplikasi Google Fuchsia.",
      date: "28 Januari 2021",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blog Anda",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: datas
              .map((item) => PostItem(
                    data: item,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/post');
        },
      ),
    );
  }
}
