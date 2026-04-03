import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
        body: Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 240.0, 0.0, 250.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              35.0, 20.0, 35.0, 0.0),
                          child: Text(
                            'AVISO DE ISENÇÃO DE RESPONSABILIDADE MÉDICA E TERMOS DE USO\n\nO aplicativo Reconexão Essencial é uma plataforma dedicada ao autoconhecimento, desenvolvimento pessoal e espiritualidade. Ao utilizar este aplicativo, você concorda com os seguintes pontos:\n\nCaráter Educativo e Espiritual: Todo o conteúdo, incluindo testes de sensibilidade (glúten/caseína), mapeamento de sintomas e sugestões nutricionais, tem finalidade exclusivamente educativa e de expansão da consciência. Não constitui mapeamento médico, prescrição dietética ou tratamento de saúde.\n\nNão Substituição Profissional: As ferramentas aqui disponibilizadas não substituem a consulta com médicos, nutricionistas, psicólogos ou outros profissionais de saúde. Nunca ignore orientações médicas profissionais em razão de informações lidas neste app.\n\nResponsabilidade do Usuário: A decisão de implementar mudanças na dieta (como a retirada de glúten ou leite) ou realizar práticas de jejum e purificação é de inteira responsabilidade do usuário. Recomendamos acompanhamento profissional para qualquer alteração clínica.\n\nLimitação de Resultados: O processo de \"autocura\" mencionado refere-se à busca por equilíbrio emocional e espiritual, e os resultados podem variar de pessoa para pessoa.\n\nPrivacidade e Uso de Dados: Seus dados serão utilizados exclusivamente para a criação do seu perfil de acesso, segurança da sua conta e comunicação de atualizações da jornada. Suas informações são estritamente confidenciais e não serão compartilhadas com terceiros.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 20.0))
                          .addToEnd(SizedBox(height: 300.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.04, -0.59),
                  child: Text(
                    'Compromisso de Consciência',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontStyle: FontStyle.italic,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -0.51),
                  child: Text(
                    'TERMOS DE USO',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.66, 0.67),
                  child: Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      unselectedWidgetColor:
                          FlutterFlowTheme.of(context).alternate,
                    ),
                    child: Checkbox(
                      value: _model.checkboxValue ??= false,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.checkboxValue = newValue!);
                      },
                      side: (FlutterFlowTheme.of(context).alternate != null)
                          ? BorderSide(
                              width: 2,
                              color: FlutterFlowTheme.of(context).alternate!,
                            )
                          : null,
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.1, 0.67),
                  child: Text(
                    'Eu entendo e aceito os\ntermos e a política de privacidade',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.04, 0.84),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(ReconexoESSENCIALWidget.routeName);
                    },
                    text: 'INICIAR JORNADA',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).accent1,
                      textStyle: FlutterFlowTheme.of(context)
                          .labelLarge
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(-0.03, -0.81),
              child: Icon(
                Icons.shield_outlined,
                color: FlutterFlowTheme.of(context).accent1,
                size: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
