import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carls Jr'),
          centerTitle: true,
          backgroundColor: const Color(0xff000000),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff000000)),
                accountName: Text(
                  "Rocio Hurtado",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                accountEmail: Text(
                  "rocihurt06@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/drawerpersona.jpg'),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.fastfood,
                ),
                title: const Text('Productos'),
                onTap: () {
                  Navigator.pushNamed(context, '/productos');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.business,
                ),
                title: const Text('Sucursales'),
                onTap: () {
                  Navigator.pushNamed(context, '/sucursales');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.feed_outlined,
                ),
                title: const Text('Reseñas'),
                onTap: () {
                  Navigator.pushNamed(context, '/listviewsAv');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.book_rounded,
                ),
                title: const Text('Blog'),
                onTap: () {
                  Navigator.pushNamed(context, '/infotarjeta');
                },
              ),
            ],
          ),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/famous-star-with-cheese.jpg',
                    ),
                    const Text(
                      "Famous Star with Cheese",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/DoubleWesternBaconCheeseburger.webp'),
                    const Text(
                      "Double Western Bacon",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ALAPARRILLA-GuacamoleBaconThickburger-min_xuuosu.webp',
                    ),
                    const Text(
                      "Guacamole Bacon Big Angus",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ALAPARRILLA-LowCarbSixDollarBurguer-min_lgz4e1.webp',
                    ),
                    const Text(
                      "Super Star with Cheese",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/DEPOLLO-BaconSwissCrispyBigChickenFilletSandwich-min_xq7yil.webp',
                    ),
                    const Text(
                      "Bacon Swiss Big Chicken Fillet",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/DEPOLLO-ChargrilledBBQChickenSandwich-min_ekbexu.webp',
                    ),
                    const Text(
                      "Charbroiled BBQ Chicken",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/DEPOLLO-ChickenStars-min_iwrkk9.webp',
                    ),
                    const Text(
                      "Chicken Stars",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ALAORDEN-NaturalCutFries-min_zxgz7m.webp',
                    ),
                    const Text(
                      "Natural-Cut French Fries",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ALAORDEN-ChiliCheeseFries-min_zc1sxa.webp',
                    ),
                    const Text(
                      "Chili Cheese Fries",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ALAORDEN-CrissCutFries-min_vagbsq.webp',
                    ),
                    const Text(
                      "CrissCut Fries",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ENSALADAS-ChargrilledChickenSalad-min_zdmvls.webp',
                    ),
                    const Text(
                      "Original Grilled Chicken Salad",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/ENSALADAS-SideSalad-min_yq1nvc.webp',
                    ),
                    const Text(
                      "Side Salad",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/POSTRES-ChocolateChipCookies-min_wfh5n2.webp',
                    ),
                    const Text(
                      "Chocolate Chip Cookie",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
                color: const Color(0xff060606),
                child: Column(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/POSTRES-IceCreamCone-min_fivahc.webp',
                    ),
                    const Text(
                      "Natural-Cut French Fries",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ],
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
        ));
  }
}
