import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 20);
  final user1 = new Peaton("Deyson", "Av. Independencia", 12);
  final user2 = new Conductor("Jesus", "Av. Goyeneche", 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School App"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(user1.toString(), style: estiloTexto),
          Text(user2.toString(), style: estiloTexto),
        ],
      )),
    );
  }
}

//-----Aplicacion----

abstract class Usuario {
  String? nombre;
  String? calle;
  int? cuadra;
}

class Peaton extends Usuario {
  Peaton(String nombre, String calle, int cuadra) {
    this.nombre = nombre;
    this.calle = calle;
    this.cuadra = cuadra;
  }

  set setNombre(String nombre) {
    this.nombre = nombre;
  }

  set setCalle(String calle) {
    this.calle = calle;
  }

  set setCuadra(int cuadra) {
    this.cuadra = cuadra;
  }

  String? get getNombre {
    return nombre;
  }

  String? get getCalle {
    return calle;
  }

  int? get getCuadra {
    return cuadra;
  }

  Map<String, dynamic> get mapPeaton {
    return {
      "nombre": this.nombre,
      "calle": this.calle,
      "cuadra": this.cuadra,
    };
  }

  @override
  String toString() => "Nombre: $nombre, Calle: $calle, Cuadra: $cuadra";
}

class Conductor extends Usuario {
  Conductor(String nombre, String calle, int cuadra) {
    this.nombre = nombre;
    this.calle = calle;
    this.cuadra = cuadra;
  }

  set setNombre(String nombre) {
    this.nombre = nombre;
  }

  set setCalle(String calle) {
    this.calle = calle;
  }

  set setCuadra(int cuadra) {
    this.cuadra = cuadra;
  }

  String? get getNombre {
    return nombre;
  }

  String? get getCalle {
    return calle;
  }

  int? get getCuadra {
    return cuadra;
  }

  Map<String, dynamic> get mapConductor {
    return {
      "nombre": this.nombre,
      "calle": this.calle,
      "cuadra": this.cuadra,
    };
  }

  @override
  String toString() => "Nombre: $nombre, Calle: $calle, Cuadra: $cuadra";
}
