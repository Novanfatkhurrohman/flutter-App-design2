import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int totalPage = 4;

  void initState() {
    _pageController = PageController(
      initialPage: 1,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
            page: 1,
            image: 'assets/images/change.jpg',
            title: 'Change e',
            description:
                'sosok seorang wanita cantik dengan bulan purnama. Sang wanita biasanya dalam balutan pakaian tradisional, tampak melangkah di atas awan putih',
          ),
          makePage(
            page: 2,
            image: 'assets/images/guin.jpg',
            title: 'Lore Guinevere',
            description:
                'Keluarga Baroque adalah salah satu keluarga bangsawan di Land of Dawn. Mereka biasanya memiliki kemampuan fencing yang sangat dibanggakan, hingga menjadi simbol keluarga, sekaligus membuat musuh ketakutan ketika berurusan dengan mereka.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/kagura.jpg',
            title: 'kaguya',
            description:
                'Ahli Onmyoji adalah seorang ahli yang menguasai seni keseimbangan Yin dan Yang serta dibantu oleh kekuatah para roh sakti untuk mengendalikan Yin dan Yang',
          ),
          makePage(
            page: 4,
            image: 'assets/images/odett.jpg',
            title: 'Oddete',
            description:
                'keturunan Regina Family generasi ke-13 lahir maka kawanan angsa akan menghormati dia. Putri Odette, sebagai keturunan ke-13',
          ),
        ],
      ),
    );
  }
}
