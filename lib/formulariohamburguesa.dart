import 'package:flutter/material.dart';

class Formulario3 extends StatelessWidget {
  const Formulario3({super.key});

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
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: const [
                Text(
                  "Formulario hamburguesa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Ingresa los datos del producto:",
                  style: TextStyle(fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "ID",
                      labelText: "Escribe el id",
                      icon: Icon(Icons.ad_units_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Nombre",
                      labelText: "Escribe el nombre",
                      icon: Icon(Icons.featured_play_list)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Tamaño",
                      labelText: "Escribe el tamaño",
                      icon: Icon(Icons.crop_free)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Tipo Carne",
                      labelText: "Escribe el tipo de carne",
                      icon: Icon(Icons.lunch_dining)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ingredientes",
                      labelText: "Escribe los ingredientes",
                      icon: Icon(Icons.assignment_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Extras",
                      labelText: "Escribe los extras",
                      icon: Icon(Icons.ballot)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Precio",
                      labelText: "Escribe el precio",
                      icon: Icon(Icons.attach_money)),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                DialogExample(),
              ],
            )));
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Aviso'),
          content: const Text('La informacion fue enviada correctamente'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Aceptar'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: const Size(50, 50),
        backgroundColor: Colors.black, // Background Color
      ),
      child: const Text('Enviar',
          style: TextStyle(color: Color(0xffffffff), fontSize: 18)),
    );
  }
}
