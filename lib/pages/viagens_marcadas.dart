import 'package:flutter/material.dart';

class ViagensMarcadas extends StatefulWidget {
  const ViagensMarcadas({ Key? key }) : super(key: key);

  @override
  State<ViagensMarcadas> createState() => _ViagensMarcadasState();
}

class _ViagensMarcadasState extends State<ViagensMarcadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: false,
      title: const Text("Viagens Marcadas"),
    ),);
  }
}