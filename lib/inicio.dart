import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  get row => null;

  @override
  Widget build(BuildContext context) {
    Widget menuformulario = Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const Text(
              "Formularios",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('1'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: const Color(0xffffb01a),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/formulario1');
                  },
                ),
                ElevatedButton(
                  child: const Text('2'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: const Color(0xffffb01a),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/formulario2');
                  },
                ),
                ElevatedButton(
                  child: const Text('3'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: const Color(0xffffb01a),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/formulario3');
                  },
                ),
                ElevatedButton(
                  child: const Text('4'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: const Color(0xffffb01a),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/formulario4');
                  },
                ),
                ElevatedButton(
                  child: const Text('5'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: const Color(0xffffb01a),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/formulario5');
                  },
                ),
              ],
            )
          ],
        ));

    Widget descripcion = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
          'Carls Jr. es una cadena de restaurante de comida rápida originada en los Estados Unidos y actualmente presente en el resto del mundo. Fue fundada en 1941 por Carl Karcher y es propietario de CKE Restaurants. Sus mayores competidores son McDonalds, Burger King y Wendys.',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16)),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: ListView(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/imginicio.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            descripcion,
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: const [
                  Text(
                    "Promociones",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(15),
              shadowColor: const Color(0xff000000),
              elevation: 10,
              child: Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/CarlsJr-OfertaRapidoYDelicioso.jpg',
                width: 600,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(15),
              shadowColor: const Color(0xff000000),
              elevation: 10,
              child: Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/CarlsJr-PhillyCheeseSteakBigAngusBurger.webp',
                width: 600,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(15),
              shadowColor: const Color(0xff000000),
              elevation: 10,
              child: Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/CarlsJr-CarlsFamilyPack.webp',
                width: 600,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            menuformulario,
            const Padding(padding: EdgeInsets.all(16.0))
          ],
        ),
      ),
    );
  }
}
