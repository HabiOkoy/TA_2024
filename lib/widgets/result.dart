import 'package:flutter/material.dart';
import 'package:mobile/face/wwwface.dart';

class Result extends StatelessWidget {
  final List<dynamic> image;
  final dynamic face;

  const Result({Key? key, required this.image, required this.face}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result', style: TextStyle(color: Colors.amber[600])),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black87, width: 4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.face,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Bentuk Wajah : $face",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            _buildImageRow(image[0], image[1], context, 0, 1),
            _buildImageRow(image[2], image[3], context, 2, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildImageRow(String image1, String image2, BuildContext context, int index1, int index2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildImageContainer(image1, context, index1),
        _buildImageContainer(image2, context, index2),
      ],
    );
  }

 Widget _buildImageContainer(String imageUrl, BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      // Navigate to the corresponding Info page based on the face shape and image index when tapped
      if (face == 'Diamond') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuiffDiamond()),//quiff
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FauxhawkDiamond()),//faux hawk
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PushedbackDiamond()),//pushed back
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidefringeDiamond()),//side fringe
            );
            break;
          default:
            break;
        }
      } else if (face == 'Heart') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BrushedbackHeart()),//brushed back
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShortmediumHeart()),//short medium
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MiddlepartHeart()),//middle part
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FadesidesHeart()),//fade side
            );
            break;
          default:
            break;
        }
      } else if (face == 'Oblong') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BluntfringeOblong()),//blunt fringe
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FringeupOblong()),//fringe up
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidefringeOblong()),//side fringe
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BuzzcutOblong()),//buzzcut
            );
            break;
          default:
            break;
        }
      }
      else if (face == 'Oval') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PushedbackOval()),//pushed back
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FringeupOval()),//fringe up
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidepartOval()),//side part
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UndercutOval()),//undercut
            );
            break;
          default:
            break;
        }
      }
      else if (face == 'Round') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuiffRound()),//quiff
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SpikyRound()),//spiky
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UndercutRound()),//undercut
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FauxhawkRound()),//fauxhawk
            );
            break;
          default:
            break;
        }
      }
      else if (face == 'Square') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>UndercutSquare ()),//undercut
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SlickedbackSquare()),//sliked
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidepartSquare()),//side part
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FauxhawkSquare()),//faukhawk
            );
            break;
          default:
            break;
        }
      }
      else if (face == 'Triangle') {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidepartTriangle()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FringeupTriangle()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SidefringeTriangle()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShortpompTriangle()),
            );
            break;
          default:
            break;
        }
      }
    },
    child: Container(
      width: 150,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black87, width: 4),
      ),
      child: Image.network(
        'http://192.168.141.167:5000/static/images/recommendation/$imageUrl',
        fit: BoxFit.cover,
      ),
    ),
  );
}
}