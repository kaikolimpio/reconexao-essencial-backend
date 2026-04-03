import '/components/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'otemploealuz_model.dart';
export 'otemploealuz_model.dart';

class OtemploealuzWidget extends StatefulWidget {
  const OtemploealuzWidget({super.key});

  static String routeName = 'otemploealuz';
  static String routePath = '/otemploealuz';

  @override
  State<OtemploealuzWidget> createState() => _OtemploealuzWidgetState();
}

class _OtemploealuzWidgetState extends State<OtemploealuzWidget> {
  late OtemploealuzModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtemploealuzModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                  child: Icon(
                    Icons.local_fire_department_sharp,
                    color: FlutterFlowTheme.of(context).accent1,
                    size: 70.0,
                  ),
                ),
              ),
              Text(
                'O Templo e a Luz',
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 40.0, 50.0, 0.0),
                child: Text(
                  'Mapear onde sua centelha divina encontra resistência no templo físico e na alma é o primeiro passo da sua autocura. Vamos ouvir o que sua essência tem a dizer.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(LeituradotemploWidget.routeName);
                  },
                  text: 'ESCUTAR A ESSÊNCIA',
                  options: FFButtonOptions(
                    height: 60.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 220.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.navBarWithMiddleButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWithMiddleButtonWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
