import 'package:flutter/material.dart';

class Sucursales extends StatelessWidget {
  const Sucursales({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titulotorres = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Carls Jr Las Torres',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Av. Las Torres.1590 Locales F y G, Parque Industrial, Intermex, 32575 Cd Juárez, Chih.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xffffcc3b),
          ),
          const Text('4.8'),
        ],
      ),
    );

    Widget tituloind = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Carls Jr Las Industrias',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ave. De La Industria y Blvd. Tomas Fernández 1150',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xffffcc3b),
          ),
          const Text('4.5'),
        ],
      ),
    );

    Widget titulosan = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Carls Jr San Lorenzo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ave. Paseo Triunfo de la República 308',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xffffcc3b),
          ),
          const Text('4.5'),
        ],
      ),
    );

    Widget tituloej = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Carls Jr Ejercito Naccional',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ave. Ejercito Nacional 2926',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xffffcc3b),
          ),
          const Text('4.5'),
        ],
      ),
    );

    Color color = const Color(0xffec8600);

    Widget seccionboton = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Llamar'),
        _buildButtonColumn(color, Icons.near_me, 'Ruta'),
        _buildButtonColumn(color, Icons.share, 'Compartir'),
      ],
    );

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          title: const Text('Carls Jr'),
          centerTitle: true,
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
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: const Color(0xffec8600)),
            tabs: const [
              Tab(
                child: Text('Torres'),
              ),
              Tab(
                child: Text('Ind.'),
              ),
              Tab(
                child: Text('San Lor.'),
              ),
              Tab(
                child: Text('Ej. Nal.'),
              ),
            ],
          ),
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
        body: TabBarView(
          children: [
            ListView(children: [
              Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/carlsjrtorres.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titulotorres,
              seccionboton,
            ]),
            ListView(children: [
              Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/carlsjrindustrias.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              tituloind,
              seccionboton,
            ]),
            ListView(children: [
              Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/carlsjrsanlorenzo.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titulosan,
              seccionboton,
            ]),
            ListView(children: [
              Image.network(
                'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/carlsjrejnac.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              tituloej,
              seccionboton,
            ]),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
