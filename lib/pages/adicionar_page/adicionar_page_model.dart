import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_page_widget.dart' show AdicionarPageWidget;
import 'package:flutter/material.dart';

class AdicionarPageModel extends FlutterFlowModel<AdicionarPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
  }
}
