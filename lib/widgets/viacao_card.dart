import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';

class ViacaoCard extends StatefulWidget {
  const ViacaoCard({ Key? key }) : super(key: key);

  @override
  State<ViacaoCard> createState() => _ViacaoCardState();
}

class _ViacaoCardState extends State<ViacaoCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        
      }),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: CoresApp.white,
        child: Column(
          children: [
            Row(
              children: [
                Text("Real Alagoas", style: TextStyle(),)
              ],
            )
          ],
        ),
      ),
    )
  }
}