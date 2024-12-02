import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? stringToDate(String? stringDate) {
  if (stringDate == null || stringDate.isEmpty) {
    return null;
  }

  try {
    // Define o formato da data da string de entrada.
    // Ajuste este formato de acordo com a sua necessidade (ex: 'dd/MM/yyyy').
    final format = DateFormat('dd/MM/yyyy');

    // Faz o parse da string para DateTime.
    return format.parse(stringDate);
  } catch (e) {
    // Trata exceções caso a string não esteja no formato esperado.
    print('Erro ao converter a data: $e');
    return null;
  }
}
