import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:login_screen/screens/profil_sayfasi/main.dart';
import 'package:login_screen/utils/profil_sayfasi.dart';
import 'package:login_screen/utils/constants.dart';
import 'package:login_screen/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/screens/mesajlasma/main.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  List<ProfileCard> profile = [];

  List<String> images = [
    'assets/images/user1.jpg',
    'assets/images/user7.png',
    'assets/images/user2.jpg',
    'assets/images/user3.jpg',
    'assets/images/user4.jpg',
    'assets/images/user5.jpeg',
    'assets/images/user6.png',
  ];

  @override
  void initState() {
    super.initState();
    _loadCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF411236),
      appBar: AppBar(
        backgroundColor: Color(0xFF411236),
        elevation: 0,
        title:  Text('Senin İçin', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.person, color: Colors.white,),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => Profil_Page()), (Route<dynamic>route) => true);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message, color: Colors.white,),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => Mesajlasma()), (Route<dynamic>route) => true);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          AppinioSwiper(
            padding: const EdgeInsets.only(bottom: 130, top: 16),
            cards: profile,


          ),
          Positioned(
            bottom: 50,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () { },
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.close, color: ColorConstants.close, size: 32,),
                  ),
                ),
                InkWell(
                  onTap: () { },
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.star, color: ColorConstants.star, size: 32,),
                  ),
                ),
                InkWell(
                  onTap: () { },
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.favorite, color: ColorConstants.favorite, size: 32,),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }

  void _loadCards() {
    for (String image in images) {
      profile.add(ProfileCard(image: image));
    }
  }
}