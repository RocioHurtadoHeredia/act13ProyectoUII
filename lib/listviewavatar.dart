import 'package:flutter/material.dart';

class ListviewsAv extends StatelessWidget {
  const ListviewsAv({super.key});

  @override
  Widget build(BuildContext context) {
    Widget seccionboton = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            const CircleAvatar(
              backgroundImage:
                  NetworkImage('https://img.icons8.com/color/512/user.png'),
            ),
            'Maria'),
        _buildButtonColumn(
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://aishlatino.com/wp-content/uploads/2021/11/que-tipo-de-persona-te-gustaria-ser-730x411-SP.jpg'),
            ),
            'Javier'),
        _buildButtonColumn(
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/005/545/335/small/user-sign-icon-person-symbol-human-avatar-isolated-on-white-backogrund-vector.jpg'),
            ),
            'Luis'),
      ],
    );

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
          const Padding(padding: EdgeInsets.all(5.0)),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: const [
                Text(
                  "Reseñas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
          seccionboton,
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: const <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
                  title: Text('Maria Consuelo Muriel'),
                  subtitle: Text(
                    'La comida estuvo muy buena, excelente servicio',
                    textAlign: TextAlign.justify,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/persona1.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: const <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
                  title: Text('Mariano de La Rosa'),
                  subtitle: Text(
                    'No es la gran cosa, es solo una hamburguesa',
                    textAlign: TextAlign.justify,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/persona2.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: const <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
                  title: Text('Elisabeth Chaparro'),
                  subtitle: Text(
                    'Deberian comprar en este lugar, todas las hamburguesas estan ricas.',
                    textAlign: TextAlign.justify,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/persona3.webp'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: const <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
                  title: Text('Gustavo da Silva'),
                  subtitle: Text(
                    'La hamburguesa que compre muy buena, recomendado!',
                    textAlign: TextAlign.justify,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/persona4.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: const <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
                  title: Text('Maider Mellado'),
                  subtitle: Text(
                    'Sin dudas compraria otra vez en este lugar!',
                    textAlign: TextAlign.justify,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/persona5.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: const <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
                  title: Text('Saul Megias'),
                  subtitle: Text(
                    'Me gustaria que tuvieran una mayor cantidad de hamburguesas pero esta bien',
                    textAlign: TextAlign.justify,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/persona6.jpg'),
                  ),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(10.0))
        ],
      ),
    );
  }

  Column _buildButtonColumn(CircleAvatar circleAvatar, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/RocioHurtadoHeredia/imgproyectoUII/main/icon.png")),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
