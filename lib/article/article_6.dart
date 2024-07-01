import 'package:flutter/material.dart';

class Info6 extends StatelessWidget {
  const Info6({Key? key});

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
                          'Kebiasaan yang Dapat Merusak Rambut',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildHealthyHairTip(
                        icon: Icons.auto_awesome,
                        title:
                            'Kebiasaan yang Dapat Merusak Rambut',
                        description:
                            'Setiap orang tentu ingin memiliki rambut yang sehat. Untuk mendapatkanya, hindarilah beberapa kebiasaan yang dapat merusak rambut berikut ini:\n\n1. Sering keramas\n\nKeramas memang penting untuk menjaga kebersihan rambut. Akan tetapi, kalau terlalu sering, kebiasaan ini justru bisa merusak rambut serta menyebabkan kulit kepala gatal dan kering. Tidak hanya itu, terlalu sering keramas juga bisa menghilangkan pelembap alami rambut, lho!\n\n2. Jarang keramas\n\nJika keseringan keramas bisa membuat kulit kepala terasa gatal dan kering, jarang keramas justru dapat membuat kulit kepala menjadi berminyak. Akibatnya, ketombe akan bermunculan dan rambut jadi lebih lengket. Oleh karena itu, kamu disarankan untuk keramas dua hari sekali atau disesuaikan dengan kondisi rambut dan aktivitas yang kamu lakukan.\n\n3. Mengeringkan rambut\n\nMengeringkan dan menata rambut dengan pengering rambut (hair dryer) atau mencatok rambut bisa memicu kebotakan dini. Jika kamu tidak ingin rambut semakin rontok dan rapuh, mulai sekarang cobalah kurangi penggunaan alat-alat ini. Saat rambut sedang basah, menggunakan pengering rambut memang bisa menjadi solusi supaya rambut kering lebih cepat. Namun, daripada membahayakan rambut indahmu, lebih baik keringkan saja dengan bantuan kipas atau angin alami.\n\n4. Menyisir rambut saat basah\n\nMenyisir atau menata rambut saat basah bisa merusak rambut. Pada saat basah, rambut cenderung meregang. Jika disisir dan ditata, kutikula rambut jadi rusak dan rambut jadi rontok atau patah. Perlakukanlah rambut dengan lembut dan jangan dikeringkan dengan menggosokkannya ke handuk. Sebisa mungkin jangan langsung tidur saat rambutmu masih basah. Selain itu, gunakan sisir sesuai kondisi dan jenis rambut.\n\n5. Mewarnai rambut\n\nRambut dengan warna-warna ceria memang sedang menjadi tren dan bisa memperindah tampilan. Meski begitu, jangan terburu-buru mengikuti tren ini dulu, deh! Kamu harus tahu, rambut yang diwarnai perlu melalui proses bleaching yang bertujuan untuk memudarkan warna rambut. Pada proses ini, pigmen alami rambutmu bisa saja menghilang dan rambut jadi rusak. Meski pewarnaan rambut tanpa bleaching diperkirakan tidak separah proses bleaching itu sendiri, tapi tetap saja mewarnai rambut dapat merusak struktur rambut serta membuatnya menjadi kering dan kusam. Tidak hanya itu, pewarna rambut juga bisa menimbulkan iritasi, gatal, atau kemerahan pada kulit.\n\n6. Sering berjemur\n\nPaparan sinar matahari ke rambut yang terjadi dalam waktu yang lama bisa membuat rambut tampak kusam, kering, bercabang, dan mudah rapuh patah. Bukan hanya itu, sinar matahari juga bisa merusak kutikula dan protein rambut atau keratin. Jika kamu ingin berjemur, pastikan kamu sudah menggunakan masker rambut atau krim rambut yang mengandung SPF tinggi untuk menghalau bahaya sinar matahari. Selain itu, kamu juga bisa melindungi rambutmu dengan menggunakan topi bertepi lebar atau payung.\n\n7. Jarang mengonsumsi makanan sehat\n\nKurang mengonsumsi makanan sehat tidak hanya berisiko membuatmu jadi gampang sakit saja, tapi juga bisa merusak kesehatan rambutmu. Pasalnya, rambut yang kekurangan beberapa nutrisi penting, seperti selenium, zat besi, zinc, asam folat, serta vitamin A, D, dan E, bisa mudah rontok, kering, kusam, dan rusak. Bila kamu ingin rambutmu sehat dan berkilau, sebaiknya konsumsi makanan sehat setiap hari, seperti telur, sayuran hijau, buah-buahan, daging, ikan, dan kacang-kacangan. Menjaga kesehatan dan kecantikan rambut merupakan hal penting. Namun, jangan sampai kebiasaan yang dilakukan dengan tujuan merawat dan mempercantik rambut, malah jadi merusak rambut, membuatnya terlihat kusam, rontok, dan mudah patah. Bila kamu telah melakukan perawatan rambut dengan benar dan menghindari kebiasaan-kebiasaan di atas, tapi rambutmu masih terlihat kusam, bau, atau mudah rontok, sebaiknya konsultasikan ke dokter untuk mendapatkan solusi yang tepat.',
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
