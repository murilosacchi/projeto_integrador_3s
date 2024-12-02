import '/backend/supabase/supabase.dart';
import '/components/popup_qr_code_widget.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'q_r_code_page_widget.dart' show QRCodePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class QRCodePageModel extends FlutterFlowModel<QRCodePageWidget> {
  ///  Local state fields for this page.

  List<ExtintoresRow> listOfExtintores = [];
  void addToListOfExtintores(ExtintoresRow item) => listOfExtintores.add(item);
  void removeFromListOfExtintores(ExtintoresRow item) =>
      listOfExtintores.remove(item);
  void removeAtIndexFromListOfExtintores(int index) =>
      listOfExtintores.removeAt(index);
  void insertAtIndexInListOfExtintores(int index, ExtintoresRow item) =>
      listOfExtintores.insert(index, item);
  void updateListOfExtintoresAtIndex(
          int index, Function(ExtintoresRow) updateFn) =>
      listOfExtintores[index] = updateFn(listOfExtintores[index]);

  List<ExtintoresRow> searchedExtintores = [];
  void addToSearchedExtintores(ExtintoresRow item) =>
      searchedExtintores.add(item);
  void removeFromSearchedExtintores(ExtintoresRow item) =>
      searchedExtintores.remove(item);
  void removeAtIndexFromSearchedExtintores(int index) =>
      searchedExtintores.removeAt(index);
  void insertAtIndexInSearchedExtintores(int index, ExtintoresRow item) =>
      searchedExtintores.insert(index, item);
  void updateSearchedExtintoresAtIndex(
          int index, Function(ExtintoresRow) updateFn) =>
      searchedExtintores[index] = updateFn(searchedExtintores[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in QR_CodePage widget.
  List<ExtintoresRow>? extintores;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for searchTextField widget.
  final searchTextFieldKey = GlobalKey();
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? searchTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchTextFieldFocusNode?.dispose();
  }
}
