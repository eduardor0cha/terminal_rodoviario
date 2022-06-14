import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class LinhasEHorarios extends StatefulWidget {
  const LinhasEHorarios({ Key? key }) : super(key: key);

  @override
  State<LinhasEHorarios> createState() => _LinhasEHorariosState();
}

class _LinhasEHorariosState extends State<LinhasEHorarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: null,
            elevation: 0,
            title: Text(
              'Viagens Marcadas',
              style: TextStyle(color: CoresApp.black),
            ),
          ),
        ),
      ),
      body: ,
    );
  }
}