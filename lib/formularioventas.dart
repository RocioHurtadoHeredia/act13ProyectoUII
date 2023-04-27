import 'package:flutter/material.dart';

class Formulario5 extends StatelessWidget {
  const Formulario5({super.key});

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
                  "Formulario ventas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Ingresa los datos de las ventas:",
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
                      hintText: "ID Cliente",
                      labelText: "Escribe el id del cliente",
                      icon: Icon(Icons.account_circle_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "ID Hamburguesa",
                      labelText: "Escribe el id de la hamburguesa",
                      icon: Icon(Icons.lunch_dining)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "ID Empleado",
                      labelText: "Escribe el id del empleado",
                      icon: Icon(Icons.badge)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Total",
                      labelText: "Escribe tel total",
                      icon: Icon(Icons.attach_money)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Envio",
                      labelText: "Escribe el envio",
                      icon: Icon(Icons.next_week)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Fecha Venta",
                      labelText: "Escribe la fecha de venta",
                      icon: Icon(Icons.calendar_month)),
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
