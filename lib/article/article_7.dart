import 'package:flutter/material.dart';

class Info7 extends StatelessWidget {
  const Info7({Key? key});

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
                          'Cara Efektif Mengatasi Rambut Tipis dengan Mudah',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildHealthyHairTip(
                        icon: Icons.auto_awesome,
                        title: 'Cara Mengatasi Rambut Tipis',
                        description:
                            'Rambut tipis dapat diatasi berdasarkan penyebab yang mendasarinya. Namun, kondisi ini umumnya dapat diatasi dengan beberapa cara berikut ini:\n\n1. Mencukupi asupan nutrisi\n\nTidak hanya untuk kesehatan tubuh, mengonsumsi makanan bernutrisi juga baik untuk kesehatan rambut. Ada beragam makanan untuk vitamin rambut yang baik dikonsumsi guna mengatasi rambut tipis, mulai dari daging tanpa lemak, ikan, telur, alpukat, sayuran hijau, hingga kacang-kacangan.\n\n2. Memijat kulit kepala secara rutin\n\nRutin memijat kulit kepala saat keramas adalah cara termudah yang dapat Anda lakukan untuk mengatasi rambut tipis. Hal ini bisa terjadi karena pijatan di kulit kepala bermanfaat untuk mendorong aliran darah dan mengangkat sel kulit mati, sehingga dapat merangsang pertumbuhan rambut.\n\n3. Mengubah penataan rambut\n\nCara mengatasi rambut tipis selanjutnya adalah dengan mengubah atau menghindari penataan rambut yang berlebihan, seperti terlalu sering menggunakan catokan atau terlalu banyak menggunakan minyak rambut atau wax.\n\nAnda bisa mengurangi kebiasaan ini atau memperhatikan cara penggunaannya agar tidak berlebihan. Bila Anda hendak memakai minyak rambut, pastikan Anda memilih produk sesuai kebutuhan dan gunakan secukupnya.\n\n4. Mengelola stres dengan baik\n\nStres yang tidak terkontrol dapat memicu pelepasan hormon kortisol. Ketika hormon kortisol yang dilepaskan terlalu banyak, hal ini dapat menghambat pertumbuhan rambut sehingga lama-kelamaan rambut semakin tipis. Oleh karena itu, Anda perlu mengelola stres dengan baik agar tidak memicu penipisan rambut.\n\n5. Menggunakan minyak esensial\n\nPenggunaan minyak esensial, seperti minyak zaitun, lavender, atau rosemary, dipercaya dapat merangsang pertumbuhan rambut menjadi lebih tebal. Anda bisa memanfaatkan khasiat minyak esensial ini dengan cara menggunakannya sebagai masker rambut.\n\n6. Memilih sampo khusus rambut tipis\n\nPenggunaan sampo khusus rambut tipis juga bisa menjadi pilihan untuk mengatasi rambut tipis. Jenis sampo ini dapat bekerja dengan dua cara, yaitu menambah volume rambut sehingga tampak lebih tebal dan memelihara kesehatan kulit kepala sehingga dapat meningkatkan pertumbuhan rambut.\n\nKedua hal tersebut dapat diperoleh karena adanya kandungan vitamin dan asam amino di dalamnya.\n\n7. Menggunakan obat-obatan\n\nJika beragam cara di atas belum mampu mengatasi rambut tipis, langkah terakhir yang bisa Anda lakukan adalah menggunakan obat-obatan dari dokter. Biasanya, dokter akan melakukan serangkaian pemeriksaan lebih dulu guna mengetahui penyebab rambut rontok.\n\nSetelah diketahui hasil diagnosis, dokter akan memberikan resep obat rambut tipis sesuai penyebab yang mendasarinya. Ada beberapa obat-obatan yang umumnya diresepkan dokter untuk mengatasi rambut tipis dan rontok, seperti minoxidil dan finasteride.\n\nDalam kondisi tertentu, dokter juga dapat merekomendasikan Anda untuk melakukan prosedur tertentu, seperti terapi laser atau operasi transplantasi rambut.\n\nRambut tipis memang bisa mengikis rasa percaya diri. Namun, selama Anda rutin melakukan beragam cara di atas, masalah rambut tipis pun dapat teratasi dengan baik. Bila perlu, Anda bisa konsultasikan dengan dokter untuk mendapatkan hasil yang maksimal.',
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
