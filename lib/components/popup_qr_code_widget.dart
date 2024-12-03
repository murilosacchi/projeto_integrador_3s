import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popup_qr_code_model.dart';
export 'popup_qr_code_model.dart';

class PopupQrCodeWidget extends StatefulWidget {
  const PopupQrCodeWidget({
    super.key,
    required this.id,
    String? tes,
  }) : this.tes = tes ?? '123';

  final String? id;
  final String tes;

  @override
  State<PopupQrCodeWidget> createState() => _PopupQrCodeWidgetState();
}

class _PopupQrCodeWidgetState extends State<PopupQrCodeWidget> {
  late PopupQrCodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupQrCodeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: MediaQuery.sizeOf(context).height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.30,
                    decoration: BoxDecoration(
                      border: Border(),color: Color.fromARGB(255, 0, 4, 26),borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=qrcode://open/${widget!.id}',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Color(0x01090000),
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFF001489),
                    icon: Icon(
                      Icons.download_sharp,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      await downloadFile(
                        filename: valueOrDefault<String>(
                          widget!.id,
                          'QrCode',
                        ),
                        url:
                            'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=qrcode://open/${widget!.id}',
                      );
                    },
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Voltar',
                    options: FFButtonOptions(
                      
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF001489),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
