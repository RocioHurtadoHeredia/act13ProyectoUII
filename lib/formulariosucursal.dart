import 'package:flutter/material.dart';

class Formulario4 extends StatelessWidget {
  const Formulario4({super.key});

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
                  "Formulario sucursal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Ingresa los datos de la sucursal:",
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
                      hintText: "Direccion",
                      labelText: "Escribe la direccion",
                      icon: Icon(Icons.location_on)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Telefono",
                      labelText: "Escribe el numero de telefono",
                      icon: Icon(Icons.call)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Codigo Postal",
                      labelText: "Escribe el codigo postal",
                      icon: Icon(Icons.edit_location)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Gerente",
                      labelText: "Escribe el nombre del gerente",
                      icon: Icon(Icons.how_to_reg)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Ciudad",
                      labelText: "Escribe la ciudad",
                      icon: Icon(Icons.map_outlined)),
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
