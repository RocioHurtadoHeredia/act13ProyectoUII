import 'package:flutter/material.dart';

class Formulario2 extends StatelessWidget {
  const Formulario2({super.key});

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
                  "Formulario empleado",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Ingresa tus datos:",
                  style: TextStyle(fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "ID",
                      labelText: "Escribe tu id",
                      icon: Icon(Icons.ad_units_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Nombre",
                      labelText: "Escribe tu nombre",
                      icon: Icon(Icons.account_circle_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Apellido",
                      labelText: "Escribe tu apellido paterno",
                      icon: Icon(Icons.account_circle_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Apellido",
                      labelText: "Escribe tu apellido materno",
                      icon: Icon(Icons.account_circle_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Direccion",
                      labelText: "Escribe tu direccion",
                      icon: Icon(Icons.location_on)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Telefono",
                      labelText: "Escribe tu numero de telefono",
                      icon: Icon(Icons.call)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Puesto",
                      labelText: "Escribe tu puesto",
                      icon: Icon(Icons.badge)),
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
