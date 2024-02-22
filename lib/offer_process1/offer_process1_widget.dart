import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'offer_process1_model.dart';
export 'offer_process1_model.dart';

class OfferProcess1Widget extends StatefulWidget {
  const OfferProcess1Widget({
    super.key,
    required this.maxblance,
    required this.minblance,
  });

  final double? maxblance;
  final double? minblance;

  @override
  State<OfferProcess1Widget> createState() => _OfferProcess1WidgetState();
}

class _OfferProcess1WidgetState extends State<OfferProcess1Widget> {
  late OfferProcess1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OfferProcess1Model());

    _model.dunController ??= TextEditingController(
        text: formatNumber(
      widget.maxblance,
      formatType: FormatType.decimal,
      decimalType: DecimalType.periodDecimal,
    ));
    _model.dunFocusNode ??= FocusNode();
    _model.dunFocusNode!.addListener(
      () async {
        setState(() {
          _model.zeeliindunValue = double.parse(_model.dunController.text);
        });
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).wight,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Зээлийн хүсэлт илгээх',
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Дижитал зээл',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 17.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(13.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Зээлийн хэмжээ: ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller: _model.dunController,
                                              focusNode: _model.dunFocusNode,
                                              onFieldSubmitted: (_) async {
                                                setState(() {
                                                  _model.zeeliindunValue =
                                                      double.parse(_model
                                                          .dunController.text);
                                                });
                                              },
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                      ),
                                              textAlign: TextAlign.end,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .dunControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '₮',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        formatNumber(
                                          widget.minblance,
                                          formatType: FormatType.decimal,
                                          decimalType:
                                              DecimalType.periodDecimal,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        formatNumber(
                                          widget.maxblance,
                                          formatType: FormatType.decimal,
                                          decimalType:
                                              DecimalType.periodDecimal,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: SliderTheme(
                                          data: SliderThemeData(
                                            showValueIndicator:
                                                ShowValueIndicator.always,
                                          ),
                                          child: Slider(
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            min: valueOrDefault<double>(
                                              widget.minblance,
                                              100000.0,
                                            ),
                                            max: valueOrDefault<double>(
                                              widget.maxblance,
                                              1000000.0,
                                            ),
                                            value: _model.zeeliindunValue ??=
                                                valueOrDefault<double>(
                                              widget.maxblance,
                                              1000000.0,
                                            ),
                                            label: _model.zeeliindunValue
                                                .toString(),
                                            onChanged: (newValue) async {
                                              newValue = double.parse(
                                                  newValue.toStringAsFixed(0));
                                              setState(() => _model
                                                  .zeeliindunValue = newValue);
                                              setState(() {
                                                _model.dunController?.text =
                                                    formatNumber(
                                                  _model.zeeliindunValue,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                );
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              if (!((functions.stringtointeger(
                                          valueOrDefault<String>(
                                        _model.dunController.text,
                                        '0',
                                      )) <=
                                      ((widget.maxblance!).toInt())) &&
                                  (functions.stringtointeger(
                                          valueOrDefault<String>(
                                        _model.dunController.text,
                                        '0',
                                      )) >=
                                      ((widget.minblance!).toInt())))) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Боломжит дүнгээс бага эсвэл хэтэрсэн байна!',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                              _model.apiResultpzj = await LoanserviceGroup
                                  .productlistfilterCall
                                  .call(
                                authToken: currentAuthenticationToken,
                                field3: 'prod_type',
                                op3: '=',
                                val3: '1',
                                field1: 'maxAmount',
                                op1: '>=',
                                val1: functions
                                    .stringtointeger(_model.dunController.text)
                                    .toString(),
                                field2: 'minAmount',
                                op2: '<=',
                                val2: functions
                                    .stringtointeger(_model.dunController.text)
                                    .toString(),
                              );
                              _shouldSetState = true;
                              if ((_model.apiResultpzj?.succeeded ?? true)) {
                                context.pushNamed(
                                  'OfferProcess2',
                                  queryParameters: {
                                    'balance': serializeParam(
                                      _model.zeeliindunValue,
                                      ParamType.double,
                                    ),
                                    'minmonth': serializeParam(
                                      getJsonField(
                                        (_model.apiResultpzj?.jsonBody ?? ''),
                                        r'''$..minDuration''',
                                      ),
                                      ParamType.int,
                                    ),
                                    'maxmonth': serializeParam(
                                      getJsonField(
                                        (_model.apiResultpzj?.jsonBody ?? ''),
                                        r'''$..maxDuration''',
                                      ),
                                      ParamType.int,
                                    ),
                                    'minhuu': serializeParam(
                                      getJsonField(
                                        (_model.apiResultpzj?.jsonBody ?? ''),
                                        r'''$..mntMinRate''',
                                      ),
                                      ParamType.double,
                                    ),
                                    'sar': serializeParam(
                                      0,
                                      ParamType.int,
                                    ),
                                    'fee': serializeParam(
                                      getJsonField(
                                        (_model.apiResultpzj?.jsonBody ?? ''),
                                        r'''$..dis_fee''',
                                      ),
                                      ParamType.double,
                                    ),
                                    'pid': serializeParam(
                                      getJsonField(
                                        (_model.apiResultpzj?.jsonBody ?? ''),
                                        r'''$..lcode''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Алдаа гарлаа!',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              if (_shouldSetState) setState(() {});
                            },
                            text: 'Үргэлжлүүлэх',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
