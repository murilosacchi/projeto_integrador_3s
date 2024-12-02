import '/backend/supabase/supabase.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'adicionar_page_widget.dart' show AdicionarPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdicionarPageModel extends FlutterFlowModel<AdicionarPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for patrimonioTextField widget.
  FocusNode? patrimonioTextFieldFocusNode;
  TextEditingController? patrimonioTextFieldTextController;
  String? Function(BuildContext, String?)?
      patrimonioTextFieldTextControllerValidator;
  // State field(s) for numEquipTextField widget.
  FocusNode? numEquipTextFieldFocusNode;
  TextEditingController? numEquipTextFieldTextController;
  String? Function(BuildContext, String?)?
      numEquipTextFieldTextControllerValidator;
  // State field(s) for inmetroTextField widget.
  FocusNode? inmetroTextFieldFocusNode;
  TextEditingController? inmetroTextFieldTextController;
  String? Function(BuildContext, String?)?
      inmetroTextFieldTextControllerValidator;
  // State field(s) for tipoDropDown widget.
  String? tipoDropDownValue;
  FormFieldController<String>? tipoDropDownValueController;
  // State field(s) for capacidadeDropDown widget.
  String? capacidadeDropDownValue;
  FormFieldController<String>? capacidadeDropDownValueController;
  // State field(s) for gerenciaDropDown widget.
  String? gerenciaDropDownValue;
  FormFieldController<String>? gerenciaDropDownValueController;
  // State field(s) for proxManutencaoTextField widget.
  FocusNode? proxManutencaoTextFieldFocusNode;
  TextEditingController? proxManutencaoTextFieldTextController;
  String? Function(BuildContext, String?)?
      proxManutencaoTextFieldTextControllerValidator;
  // State field(s) for proxRetiradaTextField widget.
  FocusNode? proxRetiradaTextFieldFocusNode;
  TextEditingController? proxRetiradaTextFieldTextController;
  String? Function(BuildContext, String?)?
      proxRetiradaTextFieldTextControllerValidator;
  // State field(s) for dataInspecaoTextField widget.
  FocusNode? dataInspecaoTextFieldFocusNode;
  TextEditingController? dataInspecaoTextFieldTextController;
  String? Function(BuildContext, String?)?
      dataInspecaoTextFieldTextControllerValidator;
  // State field(s) for fabricanteTextField widget.
  FocusNode? fabricanteTextFieldFocusNode;
  TextEditingController? fabricanteTextFieldTextController;
  String? Function(BuildContext, String?)?
      fabricanteTextFieldTextControllerValidator;
  // State field(s) for areaTextField widget.
  FocusNode? areaTextFieldFocusNode;
  TextEditingController? areaTextFieldTextController;
  String? Function(BuildContext, String?)? areaTextFieldTextControllerValidator;
  // State field(s) for setorTextField widget.
  FocusNode? setorTextFieldFocusNode;
  TextEditingController? setorTextFieldTextController;
  String? Function(BuildContext, String?)?
      setorTextFieldTextControllerValidator;
  // State field(s) for predioTextField widget.
  FocusNode? predioTextFieldFocusNode;
  TextEditingController? predioTextFieldTextController;
  String? Function(BuildContext, String?)?
      predioTextFieldTextControllerValidator;
  // State field(s) for localTextField widget.
  FocusNode? localTextFieldFocusNode;
  TextEditingController? localTextFieldTextController;
  String? Function(BuildContext, String?)?
      localTextFieldTextControllerValidator;
  // State field(s) for observacaoTextField widget.
  FocusNode? observacaoTextFieldFocusNode;
  TextEditingController? observacaoTextFieldTextController;
  String? Function(BuildContext, String?)?
      observacaoTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    patrimonioTextFieldFocusNode?.dispose();
    patrimonioTextFieldTextController?.dispose();

    numEquipTextFieldFocusNode?.dispose();
    numEquipTextFieldTextController?.dispose();

    inmetroTextFieldFocusNode?.dispose();
    inmetroTextFieldTextController?.dispose();

    proxManutencaoTextFieldFocusNode?.dispose();
    proxManutencaoTextFieldTextController?.dispose();

    proxRetiradaTextFieldFocusNode?.dispose();
    proxRetiradaTextFieldTextController?.dispose();

    dataInspecaoTextFieldFocusNode?.dispose();
    dataInspecaoTextFieldTextController?.dispose();

    fabricanteTextFieldFocusNode?.dispose();
    fabricanteTextFieldTextController?.dispose();

    areaTextFieldFocusNode?.dispose();
    areaTextFieldTextController?.dispose();

    setorTextFieldFocusNode?.dispose();
    setorTextFieldTextController?.dispose();

    predioTextFieldFocusNode?.dispose();
    predioTextFieldTextController?.dispose();

    localTextFieldFocusNode?.dispose();
    localTextFieldTextController?.dispose();

    observacaoTextFieldFocusNode?.dispose();
    observacaoTextFieldTextController?.dispose();
  }
}
