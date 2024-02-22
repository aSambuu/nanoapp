import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'repaymentinfo_model.dart';
export 'repaymentinfo_model.dart';

class RepaymentinfoWidget extends StatefulWidget {
  const RepaymentinfoWidget({
    super.key,
    this.gereeID,
    this.olgodate,
  });

  final String? gereeID;
  final String? olgodate;

  @override
  State<RepaymentinfoWidget> createState() => _RepaymentinfoWidgetState();
}

class _RepaymentinfoWidgetState extends State<RepaymentinfoWidget> {
  late RepaymentinfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RepaymentinfoModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: AccountingserviceGroup.postrepaymentCall.call(
        curdate: widget.olgodate,
        gid: widget.gereeID,
        authToken: currentAuthenticationToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).wight,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingFour(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final repaymentinfoPostrepaymentResponse = snapshot.data!;
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
                'Эргэн төлөлт хийх',
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
              child: FutureBuilder<ApiCallResponse>(
                future: LoanserviceGroup.getloanpayinfoCall.call(
                  gid: widget.gereeID,
                  paydate: widget.olgodate,
                  authToken: currentAuthenticationToken,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitFadingFour(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  final columnGetloanpayinfoResponse = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 16.0, 0.0, 16.0),
                          child: Text(
                            'Төлөлтийн  мэдээлэл',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 16.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(13.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future: LoanserviceGroup
                                  .getloanschedulefilteredCall
                                  .call(
                                gid: widget.gereeID,
                                startdate:
                                    '${functions.datetoyear(widget.olgodate).toString()}-${functions.datetomonth(widget.olgodate)}-01',
                                enddate:
                                    '${functions.datetoyear(widget.olgodate).toString()}-${functions.datetomonth(widget.olgodate)}-${functions.monthendday(functions.datetomonth(widget.olgodate), functions.datetoyear(widget.olgodate).toString()).toString()}',
                                authToken: currentAuthenticationToken,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitFadingFour(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final columnGetloanschedulefilteredResponse =
                                    snapshot.data!;
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Төлөх өдөр:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                          ),
                                          Text(
                                            widget.olgodate!,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Хуваарьт төлөх өдөр:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                          ),
                                          Text(
                                            getJsonField(
                                              columnGetloanschedulefilteredResponse
                                                  .jsonBody,
                                              r'''$..duedate''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'НИЙТ төлөх дүн:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                          ),
                                          Text(
                                            '${valueOrDefault<String>(
                                              functions.cFcomma(
                                                  valueOrDefault<String>(
                                                getJsonField(
                                                  repaymentinfoPostrepaymentResponse
                                                      .jsonBody,
                                                  r'''$..niit''',
                                                )?.toString(),
                                                '0',
                                              )),
                                              '0',
                                            )}₮',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 5.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Үндсэн төлбөр:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              '${functions.cFcomma(getJsonField(
                                                repaymentinfoPostrepaymentResponse
                                                    .jsonBody,
                                                r'''$..undtul''',
                                              ).toString())}₮',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 12.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 5.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Төлөх хүү:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              '${valueOrDefault<String>(
                                                functions.cFcomma(getJsonField(
                                                  repaymentinfoPostrepaymentResponse
                                                      .jsonBody,
                                                  r'''$..undhuu''',
                                                ).toString()),
                                                '0',
                                              )}₮',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 12.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 5.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Нэмэгдүүлсэн хүү:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              '${valueOrDefault<String>(
                                                functions.cFcomma(getJsonField(
                                                  repaymentinfoPostrepaymentResponse
                                                      .jsonBody,
                                                  r'''$..nemhuu''',
                                                ).toString()),
                                                '0',
                                              )}₮',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 12.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 5.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Авлага : ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              '${valueOrDefault<String>(
                                                functions.cFcomma(getJsonField(
                                                  repaymentinfoPostrepaymentResponse
                                                      .jsonBody,
                                                  r'''$..ablaga''',
                                                ).toString()),
                                                '0',
                                              )}₮',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 12.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Зээлийн үлдэгдэл:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                          ),
                                          Text(
                                            '${valueOrDefault<String>(
                                              functions.cFcomma(getJsonField(
                                                columnGetloanpayinfoResponse
                                                    .jsonBody,
                                                r'''$..loan_bal''',
                                              ).toString()),
                                              '0',
                                            )}₮',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Зээл хаах дүн:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                          ),
                                          Text(
                                            '${valueOrDefault<String>(
                                              functions.cFcomma(getJsonField(
                                                columnGetloanpayinfoResponse
                                                    .jsonBody,
                                                r'''$..loan_close''',
                                              ).toString()),
                                              '0',
                                            )}₮',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(13.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options: [
                                          'Өнөөдөр төлөх дүнгээр',
                                          'Зээл хаах дүнгээр',
                                          'Өөр дүнгээр'
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          if (_model.radioButtonValue ==
                                              'Өнөөдөр төлөх дүнгээр') {
                                            setState(() {
                                              _model.sliderValue = getJsonField(
                                                repaymentinfoPostrepaymentResponse
                                                    .jsonBody,
                                                r'''$..niit''',
                                              );
                                            });
                                          } else {
                                            if (_model.radioButtonValue ==
                                                'Зээл хаах дүнгээр') {
                                              setState(() {
                                                _model.sliderValue =
                                                    valueOrDefault<double>(
                                                  getJsonField(
                                                    columnGetloanpayinfoResponse
                                                        .jsonBody,
                                                    r'''$..loan_close''',
                                                  ),
                                                  0.0,
                                                );
                                              });
                                            }
                                          }
                                        },
                                        controller: _model
                                                .radioButtonValueController ??=
                                            FormFieldController<String>(
                                                'Өнөөдөр төлөх дүнгээр'),
                                        optionHeight: 32.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Slider(
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          inactiveColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          min: 0.0,
                                          max: valueOrDefault<double>(
                                            getJsonField(
                                              columnGetloanpayinfoResponse
                                                  .jsonBody,
                                              r'''$..loan_close''',
                                            ),
                                            500000.0,
                                          ),
                                          value: _model.sliderValue ??=
                                              getJsonField(
                                            repaymentinfoPostrepaymentResponse
                                                .jsonBody,
                                            r'''$..niit''',
                                          ),
                                          divisions: 100,
                                          onChanged: (_model.radioButtonValue !=
                                                  'Өөр дүнгээр')
                                              ? null
                                              : (newValue) {
                                                  newValue = double.parse(
                                                      newValue
                                                          .toStringAsFixed(2));
                                                  setState(() => _model
                                                      .sliderValue = newValue);
                                                },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Text(
                                          formatNumber(
                                            _model.sliderValue,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Text(
                                          '₮',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 16.0, 32.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    borderRadius: BorderRadius.circular(13.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.error_outline_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          size: 24.0,
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Төлөх өдөр, дүн  зөрүүтэй байх нь алданги, хугацаа хэтрэлт үүсгэх магадлалтай тул зээл төлөх өдөр болон төлөх дүнг сайтар шалгана уу! ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent3,
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'payBank',
                                queryParameters: {
                                  'dun': serializeParam(
                                    formatNumber(
                                      _model.sliderValue,
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.periodDecimal,
                                    ),
                                    ParamType.String,
                                  ),
                                  'gutga': serializeParam(
                                    widget.gereeID,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: ListTile(
                              title: Text(
                                'Дансаар төлөх',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 17.0,
                                    ),
                              ),
                              subtitle: Text(
                                'ББСБ-ийн төлөлтийн дансанд шилжүүлэх',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 20.0,
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              dense: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'qpay',
                                queryParameters: {
                                  'amount': serializeParam(
                                    _model.sliderValue,
                                    ParamType.double,
                                  ),
                                  'desc': serializeParam(
                                    widget.gereeID,
                                    ParamType.String,
                                  ),
                                  'cif': serializeParam(
                                    FFAppState().cif,
                                    ParamType.String,
                                  ),
                                  'type': serializeParam(
                                    'LOAN_REPAYMENT',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: ListTile(
                              title: Text(
                                'Qpay-ээр төлөх',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                    ),
                              ),
                              subtitle: Text(
                                'Банкны АПП ашиглан төлөх',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 20.0,
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              dense: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
