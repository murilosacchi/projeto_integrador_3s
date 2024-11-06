import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_code_page_widget.dart' show QRCodePageWidget;
import 'package:flutter/material.dart';

class QRCodePageModel extends FlutterFlowModel<QRCodePageWidget> {
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
