import 'package:flutter/material.dart';
class Info1 extends StatelessWidget {
  const Info1({super.key});

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
                          'BEBERAPA CARA MEMBUAT RAMBUT ANDA LEBIH SEHAT',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildHealthyHairTip(
                          icon: Icons.healing,
                          title: 'Merawat Kulit Kepala',
                          description:
                              'Memulihkan rambut dimulai dengan merawat kulit kepala. Perawatan dapat dilakukan dengan memijat kulit kepala saat keramas secara perlahan untuk meningkatkan sirkulasi darah dan merangsang folikel rambut untuk memproduksi rambut yang lebih tebal dan berkilau.'),
                      buildHealthyHairTip(
                          icon: Icons.local_hospital,
                          title: 'Memilih Shampoo Yang Tepat',
                          description:
                              'Anda disarankan untuk memilih shampoo berdasarkan jenis rambut dan sesuai dengan masalah rambut yang dialami, misalnya ketombe, rambut bercabang, atau rambut rontok.'),
                      buildHealthyHairTip(
                          icon: Icons.self_improvement,
                          title: 'Melakukan Perawatan Setelah Keramas',
                          description:
                              'Anda disarankan untuk tidak menyisir atau menggosok rambut yang basah dengan handuk. Penataan rambut sebaiknya dilakukan ketika rambut sudah 90 persen kering dansebisa mungkin biarkan rambut kering dengan sendirinya. Hindari terlalu sering menggunakan hair dryer karena bisa membuat rambut mudah kering.'),
                      buildHealthyHairTip(
                          icon: Icons.style,
                          title: 'Minimalisasi Penggunaan Aksesoris Rambut',
                          description:
                              'Untuk mempertahankan rambut sehat, minimalisasi penggunaan aksesoris rambut. Hindari terlalu sering mengikat atau mengepang rambut dan jangan terlalu lama atau terlalu sering menyisir rambut.'),
                      buildHealthyHairTip(
                          icon: Icons.restaurant,
                          title: 'Mengonsumsi Makanan Bernutrisi',
                          description:
                              'Perawatan rambut tidak hanya dilakukan dari luar, tetapi juga dari dalam. Untuk mempertahankan kesehatan dan keindahan rambut, makan makanan yang kaya akan protein, seperti telur, susu, kacang, ikan, unggas, dan daging tanpa lemak.'),
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
