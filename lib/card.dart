import 'package:flutter/material.dart';

class Infotargeta extends StatelessWidget {
  const Infotargeta({super.key});

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
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: const [
                Text(
                  "Blog",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            shadowColor: const Color(0xff000000),
            elevation: 10,
            child: Image.network(
              'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/blog1.webp',
              width: 500,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            shadowColor: const Color(0xff000000),
            elevation: 10,
            child: Image.network(
              'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/blog2.webp',
              width: 500,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            shadowColor: const Color(0xff000000),
            elevation: 10,
            child: Image.network(
              'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/blog3.webp',
              width: 500,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(padding: EdgeInsets.all(16.0))
        ],
      ),
    );
  }
}
