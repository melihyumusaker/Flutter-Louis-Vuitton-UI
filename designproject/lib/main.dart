import 'package:designproject/detay.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              )
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Text(
          'Moda Uygulaması',
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              color: Colors.grey,
              onPressed: () {},
              icon: Icon(Icons.camera_alt))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.transparent,
            height: 140,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //       color: Colors.transparent,
              child: Container(
                width: double.infinity,
                height: 500,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // ignore: prefer_const_constructors
                              const Text(
                                'Daisy',
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "34 mins ago",
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: '"assets/modelgrid1.jpeg"',
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    // ignore: prefer_const_constructors
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "# Louis Vuitton ",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: const Text(
                              "Chloe",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,
                            color: Colors.brown.withOpacity(0.2), size: 20),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '1.7k',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.2), size: 20),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '325',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.favorite,
                                  color: Colors.red.withOpacity(1), size: 20),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(logoPath), fit: BoxFit.cover)),
                )),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
