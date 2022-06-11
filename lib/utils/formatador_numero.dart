import 'package:intl/intl.dart';

class FormatadorNumero {
  static String paraMonetario(double valor) {
    final f = NumberFormat("###.00");

    return f.format(valor);
  }
}
