import 'package:flutter/material.dart';

class Info4 extends StatelessWidget {
  const Info4({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barberbot',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Article',
              style: TextStyle(fontSize: 30.0, color: Colors.amber[600])),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'MANFAAT KOPI UNTUK RAMBUT',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildHealthyHairTip(
                        icon: Icons.auto_awesome,
                        title: 'Merangsang Pertumbuhan Rambut',
                        description:
                            'Rambut yang rontok atau kulit kepala yang mulai tampak botak tentu bisa menurunkan rasa percaya diri, ya? Untuk mengatasinya, kamu bisa lho rutin menggunakan kopi pada rambut.\n\nKandungan flavonoid pada kopi diyakini bisa mendorong regenerasi rambut serta membuat batang dan akar rambut lebih kuat, sehingga rambut menjadi tidak mudah rontok. Kafein pada kopi juga dapat meningkatkan aliran darah ke folikel rambut. Jadi, rambut bisa tumbuh lebih cepat dan terlihat lebih bervolume.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.article,
                        title: 'Membuat Rambut Lebih Lembut dan Berkilau',
                        description:
                            'Selain bisa mendorong pertumbuhan rambut, mengaplikasikan kopi secara rutin ke kulit kepala dan batang rambut juga bisa menjaga kelembapan rambut, lho.\n\nHal ini karena kafein yang ada di dalam kopi tidak menghilangkan minyak alami yang ada di rambut dan malah menguncinya. Ditambah lagi, efek kafein yang bisa meningkatkan aliran darah akan membuat rambut semakin ternutrisi. Nah, inilah yang kemudian akan membuat rambut lebih sehat, lembut, dan berkilau.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.medical_services,
                        title: 'Menjadi Pewarna Alami Rambut',
                        description:
                            'Kopi juga bisa dimanfaatkan sebagai pewarna alami rambut. Warna kopi yang pekat bisa membuat rambut menjadi lebih gelap kecoklatan. Penggunaan kopi secara rutin juga bisa membantu menyamarkan rambut yang beruban, lho.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.medical_services_outlined,
                        title: 'Cara Menggunakan Kopi untuk Kesehatan Rambut',
                        description:
                            'Alat dan bahan yang perlu kamu siapkan adalah botol semprot atau botol aplikator yang biasa digunakan untuk mewarnai rambut, hair cup, dan 2–4 cangkir kopi yang telah diseduh dan didinginkan. Sesuaikan jumlah kopi dengan panjang rambutmu, ya.\n\nJika seduhan kopi sudah dingin, tuang airnya ke dalam botol. Kemudian, lakukan cara berikut untuk menggunakan kopi pada rambut:\n- Keramas terlebih dahulu. Ketika rambut masih basah, semprotkan seduhan kopi ke seluruh bagian rambut, mulai dari kulit kepala hingga ke batang rambut.\n- Pijat kulit kepala selama beberapa menit. Lalu, gunakan hair cup dan diamkan selama sekitar 20 menit.\n- Untuk kelembapan ekstra, kamu bisa mencampurkan seduhan kopi dengan kondisioner tanpa bilas.\n- Setelah 20 menit, bilas kopi dari rambut dengan air dingin atau hangat dan keringkan.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.warning,
                        title: 'Konsultasi dengan Dokter',
                        description:
                            'Jika penggunaan kopi untuk mengatasi rambut rontokmu masih belum berhasil atau jumlah rambut yang rontok malah semakin banyak, kamu bisa berkonsultasi dengan dokter guna mendapatkan penanganan yang sesuai dengan kondisi kesehatan rambutmu.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHealthyHairTip(
      {required IconData icon,
      required String title,
      required String description}) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30, color: Colors.amber[600]),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
