import 'package:flutter/material.dart';

class Info2 extends StatelessWidget {
  const Info2({Key? key});

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
                          'RAMBUT RONTOK',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildHealthyHairTip(
                        icon: Icons.auto_awesome,
                        title: 'Penyebab Rambut Rontok',
                        description:
                            'Banyak faktor yang dapat menyebabkan siklus pertumbuhan rambut terganggu, hingga berakibat pada rambut rontok. Rambut rontok yang terjadi secara tiba-tiba dapat terjadi akibat berbagai faktor, yaitu:\n\n• Penyakit autoimun, misalnya pada alopecia areata\n• Efek samping kemoterapi\n• Perubahan hormon, misalnya saat persalinan atau karena polycystic ovary syndrome (PCOS)\n• Efek samping obat-obatan, seperti obat penekan sistem imun (imunosupresan), obat asam urat, dan obat tekanan darah tinggi.\n\nSementara itu, rambut rontok yang terjadi secara bertahap paling sering disebabkan oleh faktor genetik atau keturunan. Selain itu, pola makan yang tidak sehat, seperti kurang protein dan zat besi, juga dapat mengurangi kesuburan akar rambut, sehingga menimbulkan kerontokan.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.article,
                        title: 'Gejala Rambut Rontok',
                        description:
                            'Gejala rambut rontok tergantung pada penyebabnya. Gejala ini dapat muncul secara tiba-tiba atau bertahap. Beberapa gejala tersebut adalah:\n\n• Penipisan rambut di puncak kepala (ubun-ubun)\n• Pitak\n• Penipisan rambut yang merata di kepala\n• Rambut rontok di seluruh tubuh',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.medical_services,
                        title: 'Diagnosis Rambut Rontok',
                        description:
                            'Diagnosis rambut rontok diawali dengan tanya jawab terkait gejala yang dialami pasien, serta riwayat penyakit pasien dan keluarganya. Setelah itu, dokter akan melakukan pemeriksaan fisik pada rambut dan kulit kepala.\n\nPada pemeriksaan fisik, dokter akan menarik lembut rambut pasien untuk melihat seberapa banyak rambut yang rontok. Jika diperlukan, dokter dapat melakukan pemeriksaan penunjang, seperti:\n\n• Tes darah, untuk mendeteksi kondisi yang menyebabkan rambut rontok\n• Biopsi kulit kepala, untuk mendeteksi apakah terjadi infeksi yang dapat menyebabkan rambut rontok',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.medical_services_outlined,
                        title: 'Pengobatan Rambut Rontok',
                        description:
                            'Penanganan rambut rontok tergantung pada penyebabnya. Pada rambut rontok yang terjadi akibat perubahan hormon saat persalinan, lebatnya rambut akan kembali normal dalam kurun waktu 6−9 bulan pascamelahirkan.\n\nPada rambut rontok yang terkait dengan stres, dokter akan menyarankan pasien untuk menjalani konseling dan psikoterapi. Sementara jika rambut rontok terjadi akibat status gizi yang kurang baik, maka dokter akan memberikan saran tambahan asupan gizi dan multivitamin.\n\nPenanganan medis lain dapat dilakukan saat seseorang mulai merasa penampilannya terganggu akibat rambut rontok. Beberapa metode penanganan yang dapat dilakukan untuk mengatasi rambut rontok adalah:\n\n• Pemberian obat oles kulit kepala yang mengandung minoxidil\n• Pemberian obat minum yang mengandung finasteride atau spironolactone\n• Penggunaan sampo khusus rambut rontok\n• Cangkok atau transplantasi rambut, untuk mengatasi kebotakan akibat rambut rontok',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.warning,
                        title: 'Komplikasi Rambut Rontok',
                        description:
                            'Rambut rontok yang tidak ditangani dapat mengganggu penderitanya dalam melakukan kegiatan sehari-hari. Penipisan rambut dan adanya pitak yang disebabkan kerontokan rambut dapat terlihat orang lain sehingga membuat penderitanya merasa malu.\n\nJika kondisi tersebut dibiarkan, penderitanya dapat mengalami komplikasi berupa penurunan kepercayaan diri, gangguan kecemasan, hingga depresi.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.security,
                        title: 'Pencegahan Rambut Rontok',
                        description:
                            'Kerontokan rambut tidak selalu dapat dicegah, terutama yang terkait dengan faktor keturunan. Akan tetapi, pencegahan rambut rontok bisa dimulai dari perawatan rambut dengan rangkaian sampo yang mengandung krim Argan dan esens alpukat yang membantu menguatkan dan menjaga rambut tetap sehat.\n\nSelain perawatan rambut, ada beberapa upaya yang dapat dilakukan untuk menjaga kesehatan rambut agar tercegah dari kerontokan:\n\n• Jangan sering mewarnai rambut.\n• Lindungi rambut dari paparan sinar matahari secara langsung dengan memakai topi dan payung ketika cuaca terik.\n• Sisir rambut dengan benar.\n• Pilih produk perawatan rambut yang sesuai dengan jenis kulit kepala dan rambut.',
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
