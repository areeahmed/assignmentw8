import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // no need appbar

      //! Body

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                    color: Color.fromARGB(255, 192, 255, 184), width: 7),
                borderRadius: BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://live.staticflickr.com/8070/8221538890_ca38326a98_b.jpg',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 24),
              child: Text(
                "Full Name",
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 250,
              child: Text(
                "Consequat sit elit id anim enim duis esse in occaecat minim dolore id id. Sint culpa cupidatat cupidatat culpa dolor pariatur nulla mollit consectetur laboris. Ea aute occaecat eu occaecat exercitation proident irure qui. Consequat pariatur commodo consequat dolor tempor ullamco ipsum amet reprehenderit. Consectetur qui sunt amet consectetur deserunt Lorem do ad cillum ad ullamco irure.",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 54,
              width: 299,
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(88, 219, 174, 255),
              ),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(width: 70),
                  Text(
                    'LinkedIn',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 54,
              width: 299,
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(87, 106, 121, 255),
              ),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(width: 70),
                  Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 54,
              width: 299,
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(87, 255, 147, 133),
              ),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagramSquare,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(width: 70),
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 54,
              width: 299,
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(87, 244, 255, 140),
              ),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.weebly,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(width: 70),
                  Text(
                    'My Website',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.greenAccent),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 181, 209, 255)),
                  child: Center(
                      child: Icon(
                    Icons.email,
                    color: Colors.grey.shade600,
                  )),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 57,
                    width: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 255, 255, 204)),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.solidMessage,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
