import '/backend/supabase/supabase.dart';
import '/components/popup_extintor_widget.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'consulta_page_widget.dart' show ConsultaPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConsultaPageModel extends FlutterFlowModel<ConsultaPageWidget> {
  ///  Local state fields for this page.

  List<ExtintoresRow> allExtintores = [];
  void addToAllExtintores(ExtintoresRow item) => allExtintores.add(item);
  void removeFromAllExtintores(ExtintoresRow item) =>
      allExtintores.remove(item);
  void removeAtIndexFromAllExtintores(int index) =>
      allExtintores.removeAt(index);
  void insertAtIndexInAllExtintores(int index, ExtintoresRow item) =>
      allExtintores.insert(index, item);
  void updateAllExtintoresAtIndex(
          int index, Function(ExtintoresRow) updateFn) =>
      allExtintores[index] = updateFn(allExtintores[index]);

  List<ExtintoresRow> extintoresPorSetor = [];
  void addToExtintoresPorSetor(ExtintoresRow item) =>
      extintoresPorSetor.add(item);
  void removeFromExtintoresPorSetor(ExtintoresRow item) =>
      extintoresPorSetor.remove(item);
  void removeAtIndexFromExtintoresPorSetor(int index) =>
      extintoresPorSetor.removeAt(index);
  void insertAtIndexInExtintoresPorSetor(int index, ExtintoresRow item) =>
      extintoresPorSetor.insert(index, item);
  void updateExtintoresPorSetorAtIndex(
          int index, Function(ExtintoresRow) updateFn) =>
      extintoresPorSetor[index] = updateFn(extintoresPorSetor[index]);

  List<ExtintoresRow> extintoresPorPredio = [];
  void addToExtintoresPorPredio(ExtintoresRow item) =>
      extintoresPorPredio.add(item);
  void removeFromExtintoresPorPredio(ExtintoresRow item) =>
      extintoresPorPredio.remove(item);
  void removeAtIndexFromExtintoresPorPredio(int index) =>
      extintoresPorPredio.removeAt(index);
  void insertAtIndexInExtintoresPorPredio(int index, ExtintoresRow item) =>
      extintoresPorPredio.insert(index, item);
  void updateExtintoresPorPredioAtIndex(
          int index, Function(ExtintoresRow) updateFn) =>
      extintoresPorPredio[index] = updateFn(extintoresPorPredio[index]);

  List<ExtintoresRow> extintoresPorAnoRetirada = [];
  void addToExtintoresPorAnoRetirada(ExtintoresRow item) =>
      extintoresPorAnoRetirada.add(item);
  void removeFromExtintoresPorAnoRetirada(ExtintoresRow item) =>
      extintoresPorAnoRetirada.remove(item);
  void removeAtIndexFromExtintoresPorAnoRetirada(int index) =>
      extintoresPorAnoRetirada.removeAt(index);
  void insertAtIndexInExtintoresPorAnoRetirada(int index, ExtintoresRow item) =>
      extintoresPorAnoRetirada.insert(index, item);
  void updateExtintoresPorAnoRetiradaAtIndex(
          int index, Function(ExtintoresRow) updateFn) =>
      extintoresPorAnoRetirada[index] =
          updateFn(extintoresPorAnoRetirada[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in ConsultaPage widget.
  List<ExtintoresRow>? extintoresAction;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for setorDropDown widget.
  String? setorDropDownValue;
  FormFieldController<String>? setorDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in setorDropDown widget.
  List<ExtintoresRow>? extintoresQueryActionSetor;
  // State field(s) for predioDropDown widget.
  String? predioDropDownValue;
  FormFieldController<String>? predioDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in predioDropDown widget.
  List<ExtintoresRow>? extintoresQueryActionPredio;
  // State field(s) for proxRetiradaDropDown widget.
  String? proxRetiradaDropDownValue;
  FormFieldController<String>? proxRetiradaDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in proxRetiradaDropDown widget.
  List<ExtintoresRow>? extintoresQueryActionAnoRetirada;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
  }
}
