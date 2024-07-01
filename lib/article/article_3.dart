import 'package:flutter/material.dart';

class Info3 extends StatelessWidget {
  const Info3({Key? key});

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
                          'Cara Mewarnai Rambut yang Aman',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildSafeHairColoringTip(
                        icon: Icons.article,
                        title:
                            'Hal yang Harus Diperhatikan saat Mewarnai Rambut',
                        description:
                            'Bagi kamu yang ingin mewarnai rambut, ikutilah beberapa tips cara mewarnai rambut yang aman berikut ini:\n\n1. Perhatikan aturan pakai pada kemasan\nBaca aturan pemakaian dan keamanan penggunaan pewarna rambut secara mendetail pada kemasan produknya. Kemudian, gunakan sesuai aturan dan petunjuk penggunaan.\n\n2. Lakukan uji tempel\nSebelum menggunakan cat rambut di kepala, kamu disarankan untuk melakukan uji tempel pada kulit terlebih dulu. Jika pada area kulit yang dioleskan cat rambut muncul efek samping atau reaksi alergi, seperti gatal, timbul ruam, kulit melepuh dan perih akibat iritasi atau peradangan kulit, ini artinya tubuhmu tidak cocok dengan zat kimia yang terkandung di dalamnya. Jika hal ini terjadi, kamu disarankan untuk tidak menggunakan pewarna rambut tersebut.\n\n3. Jangan keramas sebelum dan setelah mewarnai rambut\nJika ingin mewarnai rambut, kamu dianjurkan untuk tidak keramas selama 1 hari sebelumnya dan sekitar 3 hari setelah mewarnai rambut. Ini bertujuan agar rambut tidak kehilangan minyak alami atau sebum yang berfungsi untuk melindunginya dari kerusakan. Selain itu, hasil cat atau bleaching rambut juga bisa menjadi kurang efektif ketika kamu keramas setelah mewarnai rambut.\n\n4. Jangan mencampur produk pewarna rambut\nCat atau pewarna rambut umumnya mengandung bahan kimia yang keras dan iritatif. Oleh karena itu, kamu tidak dianjurkan untuk mencampurkan produk pewarna rambut yang berbeda. Tindakan ini bisa saja membuat rambutmu rusak dan kulit kepalamu teriritasi.\n\n5. Kenakan sarung tangan saat menggunakan pewarna\nSaat mencampurkan dan mengoleskan cat rambut di kepala, jangan lupa untuk mengenakan sarung tangan. Ini dilakukan untuk meminimalkan terjadinya kontak langsung dengan bahan kimia yang terdapat di dalam produk tersebut. Kamu juga dianjurkan untuk menggunakan masker, agar zat kimia dari cat rambut tidak terhirup atau menempel di kulit wajah.\n\n6. Bilas pewarna rambut hingga bersih\nSetelah pewarna rambut dioleskan, bilaslah rambut dengan air dingin hingga bersih, sesuai waktu yang ditentukan di label kemasan. Seperti dijelaskan di atas, kamu mungkin perlu menunda untuk keramas selama 3 hari setelah mewarnai rambut agar menghasilkan warna yang baik. Kamu juga disarankan untuk mencuci rambut 2−3 kali saja dalam seminggu, agar warna rambut tidak cepat pudar.\n\n7. Gunakan sampo khusus\nSaat keramas, kamu disarankan untuk menggunakan sampo khusus untuk rambut yang diwarnai. Sampo jenis ini umumnya mengandung sedikit deterjen dan tidak mengandung zat kimia tertentu, seperti sulfat atau parabens, sehingga warna rambut tidak mudah luntur.\n\nSelain mengikuti tips di atas, penting juga bagi kamu untuk membatasi frekuensi mewarnai rambut. Pasalnya, selain bisa menyebabkan kerusakan pada rambut dan iritasi di kulit kepala, kebiasaan terlalu sering mewarnai rambut dalam jangka panjang juga bisa meningkatkan risiko terjadinya kanker.\n\nMewarnai Rambut dengan Bahan Alami\nJika ingin menghindari penggunaan produk pewarna rambut yang mengandung bahan kimia, kamu bisa beralih ke produk pewarna rambut yang terbuat dari tumbuhan alami seperti henna. Henna relatif lebih aman digunakan. Namun, kamu tetap perlu hati-hati dalam memilih produk henna dan pastikan henna yang digunakan benar-benar alami. Henna yang berwarna hitam sebaiknya dihindari karena biasanya mengandung pewarna sintetis, seperti paraphenylenediamine (PPD). Lebih baik pilih henna dengan warna orange atau warna yang terlihat agak merah dan kecokelatan. Mengikuti tren pewarnaan rambut boleh-boleh saja, tapi kamu juga harus mengetahui cara mewarnai rambut yang aman beserta cara perawatannya demi kesehatan. Bagi yang ingin mewarnai rambut pada saat hamil, konsultasikan terlebih dahulu ke dokter untuk memastikan keamanannya.',
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

  Widget buildSafeHairColoringTip(
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
