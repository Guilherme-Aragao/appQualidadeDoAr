import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'sensor_model.dart';
export 'sensor_model.dart';

class SensorWidget extends StatefulWidget {
  const SensorWidget({
    super.key,
    required this.channelId,
  });

  final int? channelId;

  static String routeName = 'Sensor';
  static String routePath = '/sensor';

  @override
  State<SensorWidget> createState() => _SensorWidgetState();
}

class _SensorWidgetState extends State<SensorWidget> {
  late SensorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SensorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetLastAirQualityCall.call(
        channelId: widget!.channelId,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final sensorGetLastAirQualityResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF001A2A),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.goNamed(HomeWidget.routeName);
                },
              ),
              title: Text(
                'Sensor 1',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.raleway(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF001A2A),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: () {
                                              if ((String ppm) {
                                                return double.parse(ppm)
                                                        .floor() <=
                                                    50;
                                              }(GetLastAirQualityCall.ppm(
                                                sensorGetLastAirQualityResponse
                                                    .jsonBody,
                                              )!)) {
                                                return Color(0xFF4CD964);
                                              } else if ((String ppm) {
                                                return double.parse(ppm)
                                                        .floor() <=
                                                    100;
                                              }(GetLastAirQualityCall.ppm(
                                                sensorGetLastAirQualityResponse
                                                    .jsonBody,
                                              )!)) {
                                                return Color(0xFFFFE334);
                                              } else if ((String ppm) {
                                                return double.parse(ppm)
                                                        .floor() <=
                                                    200;
                                              }(GetLastAirQualityCall.ppm(
                                                sensorGetLastAirQualityResponse
                                                    .jsonBody,
                                              )!)) {
                                                return Color(0xFFF28E03);
                                              } else {
                                                return Color(0xFFFF3B30);
                                              }
                                            }(),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                if ((String ppm) {
                                                  return double.parse(ppm)
                                                          .floor() <=
                                                      50;
                                                }(GetLastAirQualityCall.ppm(
                                                  sensorGetLastAirQualityResponse
                                                      .jsonBody,
                                                )!)) {
                                                  return Icon(
                                                    Icons.cloud_done_rounded,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  );
                                                } else if ((String ppm) {
                                                  return double.parse(ppm)
                                                          .floor() <=
                                                      100;
                                                }(GetLastAirQualityCall.ppm(
                                                  sensorGetLastAirQualityResponse
                                                      .jsonBody,
                                                )!)) {
                                                  return Icon(
                                                    Icons
                                                        .cloud_download_rounded,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  );
                                                } else if ((String ppm) {
                                                  return double.parse(ppm)
                                                          .floor() <=
                                                      200;
                                                }(GetLastAirQualityCall.ppm(
                                                  sensorGetLastAirQualityResponse
                                                      .jsonBody,
                                                )!)) {
                                                  return Icon(
                                                    Icons.cloud_sync_rounded,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  );
                                                } else {
                                                  return Icon(
                                                    Icons.dangerous_rounded,
                                                    color: Colors.white,
                                                    size: 18.0,
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                        Text(
                                          () {
                                            if ((String ppm) {
                                              return double.parse(ppm)
                                                      .floor() <=
                                                  50;
                                            }(GetLastAirQualityCall.ppm(
                                              sensorGetLastAirQualityResponse
                                                  .jsonBody,
                                            )!)) {
                                              return 'Ar Limpo!';
                                            } else if ((String ppm) {
                                              return double.parse(ppm)
                                                      .floor() <=
                                                  100;
                                            }(GetLastAirQualityCall.ppm(
                                              sensorGetLastAirQualityResponse
                                                  .jsonBody,
                                            )!)) {
                                              return 'Ar Moderado!';
                                            } else if ((String ppm) {
                                              return double.parse(ppm)
                                                      .floor() <=
                                                  200;
                                            }(GetLastAirQualityCall.ppm(
                                              sensorGetLastAirQualityResponse
                                                  .jsonBody,
                                            )!)) {
                                              return 'Ar Poluido!';
                                            } else {
                                              return 'Ar Altamente Poluído!';
                                            }
                                          }(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.raleway(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color: () {
                                                  if ((String ppm) {
                                                    return double.parse(ppm)
                                                            .floor() <=
                                                        50;
                                                  }(GetLastAirQualityCall.ppm(
                                                    sensorGetLastAirQualityResponse
                                                        .jsonBody,
                                                  )!)) {
                                                    return Color(0xFF4CD964);
                                                  } else if ((String ppm) {
                                                    return double.parse(ppm)
                                                            .floor() <=
                                                        100;
                                                  }(GetLastAirQualityCall.ppm(
                                                    sensorGetLastAirQualityResponse
                                                        .jsonBody,
                                                  )!)) {
                                                    return Color(0xFFFFE334);
                                                  } else if ((String ppm) {
                                                    return double.parse(ppm)
                                                            .floor() <=
                                                        200;
                                                  }(GetLastAirQualityCall.ppm(
                                                    sensorGetLastAirQualityResponse
                                                        .jsonBody,
                                                  )!)) {
                                                    return Color(0xFFF28E03);
                                                  } else {
                                                    return Color(0xFFFF3B30);
                                                  }
                                                }(),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                    Expanded(
                                      child: Text(
                                        () {
                                          if ((String ppm) {
                                            return double.parse(ppm).floor() <=
                                                50;
                                          }(GetLastAirQualityCall.ppm(
                                            sensorGetLastAirQualityResponse
                                                .jsonBody,
                                          )!)) {
                                            return 'Nenhuma ação necessária Ambiente seguro, com ar de boa qualidade';
                                          } else if ((String ppm) {
                                            return double.parse(ppm).floor() <=
                                                100;
                                          }(GetLastAirQualityCall.ppm(
                                            sensorGetLastAirQualityResponse
                                                .jsonBody,
                                          )!)) {
                                            return 'Pode ser necessário ventilar o ambiente para melhorar a qualidade do ar';
                                          } else if ((String ppm) {
                                            return double.parse(ppm).floor() <=
                                                200;
                                          }(GetLastAirQualityCall.ppm(
                                            sensorGetLastAirQualityResponse
                                                .jsonBody,
                                          )!)) {
                                            return 'Abertura de janelas recomendada Evite atividades intensas';
                                          } else {
                                            return 'Abra as janelas imediatamente e evite ficar muito tempo no ambiente';
                                          }
                                        }(),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.raleway(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 200.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    (double.parse(
                                                                (GetLastAirQualityCall
                                                                    .ppm(
                                                      sensorGetLastAirQualityResponse
                                                          .jsonBody,
                                                    )!))
                                                            .floor())
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displayLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .raleway(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displayLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    'PPM',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .raleway(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 200.0,
                                            height: 200.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 180.0,
                                                  height: 180.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFF1A3040),
                                                      width: 10.0,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 180.0,
                                                  height: 180.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFFFF9500),
                                                      width: 5.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  Expanded(
                                    child: CircularPercentIndicator(
                                      percent: (String ppm) {
                                        return double.parse(ppm).floor() > 200
                                            ? 1.0
                                            : double.parse(ppm).floor() / 200;
                                      }(GetLastAirQualityCall.ppm(
                                        sensorGetLastAirQualityResponse
                                            .jsonBody,
                                      )!),
                                      radius: 90.0,
                                      lineWidth: 12.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: () {
                                        if ((String ppm) {
                                          return double.parse(ppm).floor() <=
                                              50;
                                        }(GetLastAirQualityCall.ppm(
                                          sensorGetLastAirQualityResponse
                                              .jsonBody,
                                        )!)) {
                                          return Color(0xFF4CD964);
                                        } else if ((String ppm) {
                                          return double.parse(ppm).floor() <=
                                              100;
                                        }(GetLastAirQualityCall.ppm(
                                          sensorGetLastAirQualityResponse
                                              .jsonBody,
                                        )!)) {
                                          return Color(0xFFFFE334);
                                        } else if ((String ppm) {
                                          return double.parse(ppm).floor() <=
                                              200;
                                        }(GetLastAirQualityCall.ppm(
                                          sensorGetLastAirQualityResponse
                                              .jsonBody,
                                        )!)) {
                                          return Color(0xFFF28E03);
                                        } else {
                                          return Color(0xFFFF3B30);
                                        }
                                      }(),
                                      backgroundColor: Colors.transparent,
                                      center: Text(
                                        (String ppm) {
                                          return double.parse(ppm)
                                                  .floor()
                                                  .toString() +
                                              ' ppm';
                                        }(GetLastAirQualityCall.ppm(
                                          sensorGetLastAirQualityResponse
                                              .jsonBody,
                                        )!),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              font: GoogleFonts.raleway(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 26.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: 12.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF4CD964),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Text(
                                          'Boa',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      '0–50',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xBCFFFFFF),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: 12.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFE334),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Text(
                                          'Moderada',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      '51–100',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xBCFFFFFF),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: 12.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF28E03),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Text(
                                          'Ruim',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      '101–200',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xBCFFFFFF),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: 12.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFF3B30),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Text(
                                          'Muito Ruim',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      '>200',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xBCFFFFFF),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Text(
                              'PPM significa partes por milhão.',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
