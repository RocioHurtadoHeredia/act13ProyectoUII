import 'package:flutter/material.dart';
import 'package:hurtado/formulariocliente.dart';
import 'package:hurtado/formularioempleado.dart';
import 'package:hurtado/formulariohamburguesa.dart';
import 'package:hurtado/formulariosucursal.dart';
import 'package:hurtado/inicio.dart';
import 'package:hurtado/card.dart';
import 'package:hurtado/productos.dart';
import 'package:hurtado/tabbar.dart';
import 'package:hurtado/listviewavatar.dart';
import 'package:hurtado/formularioventas.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    debugShowCheckedModeBanner: false,
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Inicio(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/formulario1': (context) => const Formulario1(),

      '/formulario2': (context) => const Formulario2(),

      '/formulario3': (context) => const Formulario3(),

      '/formulario4': (context) => const Formulario4(),

      '/formulario5': (context) => const Formulario5(),

      '/productos': (context) => const Productos(),

      '/sucursales': (context) => const Sucursales(),

      '/listviewsAv': (context) => const ListviewsAv(),

      '/infotarjeta': (context) => const Infotargeta(),
    },
  ));
}
