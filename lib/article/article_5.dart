import 'package:flutter/material.dart';

class Info5 extends StatelessWidget {
  const Info5({Key? key});

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
            icon: Icon(Icons.arrow_back, color: Colors.white),
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
                          'Beragam Cara Merawat Rambut Rusak secara Alami',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      buildHealthyHairTip(
                        icon: Icons.auto_awesome,
                        title: 'Oleskan minyak alami',
                        description:
                            'Cara merawat rambut rusak yang pertama adalah mengoleskan minyak alami ke kulit kepala dan rambut. Hal ini bertujuan untuk melembutkan dan melembapkan rambut kering akibat kerusakan rambut, serta merangsang pertumbuhan rambut yang sehat.\nAnda bisa melakukannya sambil memijat kepala selama 30–60 menit sebelum mencuci rambut. Jenis minyak alami yang bisa Anda gunakan adalah minyak zaitun, minyak almond, atau minyak kelapa. Anda juga bisa mencampur minyak tersebut dengan minyak esensial, seperti tea tree oil atau minyak peppermint.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.article,
                        title: 'Batasi penggunaan alat penata rambut',
                        description:
                            'Penggunaan alat penata rambut, seperti pengering, pelurus, atau pengeriting rambut, bisa memperparah kerusakan rambut apabila digunakan terlalu sering atau pada suhu yang terlalu tinggi.\nPasalnya, paparan suhu panas dari alat-alat tersebut mampu menghilangkan kandungan minyak dan kelembapan alami rambut, sehingga rambut lebih rapuh dan mudah rontok.\nOleh karena itu, pastikan Anda menggunakannya dengan suhu yang tidak terlalu panas dan jangan biarkan alat tersebut terlalu lama menempel di rambut.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.medical_services,
                        title: 'Gunakan masker rambut alami secara rutin',
                        description:
                            'Cara merawat rambut rusak yang juga efektif adalah dengan masker rambut alami. Penggunaan masker rambut secara rutin bisa membawa banyak manfaat, termasuk mengurangi kerusakan rambut, membuat rambut lebih kuat, dan menyehatkan kulit kepala.\nAda banyak pilihan bahan-bahan alami yang bisa Anda gunakan sebagai masker rambut, seperti pisang, madu, kuning telur, alpukat, atau lidah buaya.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.medical_services_outlined,
                        title:
                            'Lindungi rambut dari paparan langsung sinar matahari',
                        description:
                            'Sama seperti kulit, paparan sinar matahari ke rambut juga bisa membuat rambut rusak, kusam, dan mudah rontok. Oleh karena itu, saat beraktivitas di luar ruangan Anda disarankan untuk mengenakan topi atau payung agar rambut tetap terlindungi.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.warning,
                        title: 'Gunakan masker rambut alami secara rutin',
                        description:
                            'Cara merawat rambut rusak yang juga efektif adalah dengan masker rambut alami. Penggunaan masker rambut secara rutin bisa membawa banyak manfaat, termasuk mengurangi kerusakan rambut, membuat rambut lebih kuat, dan menyehatkan kulit kepala.\nAda banyak pilihan bahan-bahan alami yang bisa Anda gunakan sebagai masker rambut, seperti pisang, madu, kuning telur, alpukat, atau lidah buaya.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.security,
                        title:
                            'Lindungi rambut dari paparan langsung sinar matahari',
                        description:
                            'Sama seperti kulit, paparan sinar matahari ke rambut juga bisa membuat rambut rusak, kusam, dan mudah rontok. Oleh karena itu, saat beraktivitas di luar ruangan Anda disarankan untuk mengenakan topi atau payung agar rambut tetap terlindungi.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.article,
                        title: 'Gunakan masker rambut alami secara rutin',
                        description:
                            'Cara merawat rambut rusak yang juga efektif adalah dengan masker rambut alami. Penggunaan masker rambut secara rutin bisa membawa banyak manfaat, termasuk mengurangi kerusakan rambut, membuat rambut lebih kuat, dan menyehatkan kulit kepala.\nAda banyak pilihan bahan-bahan alami yang bisa Anda gunakan sebagai masker rambut, seperti pisang, madu, kuning telur, alpukat, atau lidah buaya.',
                      ),
                      buildHealthyHairTip(
                        icon: Icons.warning,
                        title:
                            'Lindungi rambut dari paparan langsung sinar matahari',
                        description:
                            'Sama seperti kulit, paparan sinar matahari ke rambut juga bisa membuat rambut rusak, kusam, dan mudah rontok. Oleh karena itu, saat beraktivitas di luar ruangan Anda disarankan untuk mengenakan topi atau payung agar rambut tetap terlindungi.',
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
