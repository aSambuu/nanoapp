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
import 'loandet_model.dart';
export 'loandet_model.dart';

class LoandetWidget extends StatefulWidget {
  const LoandetWidget({
    super.key,
    this.gereeID,
    String? zeeliindun,
    String? olgodate,
    String? hugatsaa,
    String? huu,
    String? ulddun,
    String? angilal,
    this.dmsid,
    required this.cid,
  })  : this.zeeliindun = zeeliindun ?? '0',
        this.olgodate = olgodate ?? '2000-01-01',
        this.hugatsaa = hugatsaa ?? '0',
        this.huu = huu ?? '0',
        this.ulddun = ulddun ?? '0',
        this.angilal = angilal ?? '0';

  final String? gereeID;
  final String zeeliindun;
  final String olgodate;
  final String hugatsaa;
  final String huu;
  final String ulddun;
  final String angilal;
  final int? dmsid;
  final int? cid;

  @override
  State<LoandetWidget> createState() => _LoandetWidgetState();
}

class _LoandetWidgetState extends State<LoandetWidget> {
  late LoandetModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoandetModel());
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
            'Зээлийн дэлгэрэнгүй',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'Зээлийн гэрээний мэдээлэл',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Гэрээний ID:',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                Text(
                                  widget.gereeID!,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Зээлийн дүн:',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                Text(
                                  '${valueOrDefault<String>(
                                    functions.cFcomma(widget.zeeliindun),
                                    '0',
                                  )}₮',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Олгосон  огноо:',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    functions
                                        .cFcurrenttimeshort(widget.olgodate),
                                    '2023-01-01',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Хугацаа: ',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.hugatsaa,
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Хүү:',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        widget.huu,
                                        '99',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                    ),
                                    Text(
                                      '%',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Үлдэгдэл дүн:',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                Text(
                                  '${valueOrDefault<String>(
                                    functions.cFcomma(widget.ulddun),
                                    '0',
                                  )}₮',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Зээлийн ангилал:',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                              FutureBuilder<ApiCallResponse>(
                                future: LoanserviceGroup.getloanclassCall.call(
                                  id: widget.angilal,
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
                                  final textGetloanclassResponse =
                                      snapshot.data!;
                                  return Text(
                                    getJsonField(
                                      textGetloanclassResponse.jsonBody,
                                      r'''$..aname''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'repaymentinfo',
                              queryParameters: {
                                'gereeID': serializeParam(
                                  widget.gereeID,
                                  ParamType.String,
                                ),
                                'olgodate': serializeParam(
                                  functions.cFcurrenttimeshort(
                                      getCurrentTimestamp.toString()),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: ListTile(
                            title: Text(
                              'Зээл төлөх,  хаах',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            subtitle: Text(
                              'Хуваарьт өдөр: ${functions.cdatetoyear(dateTimeFormat('yMd', getCurrentTimestamp))?.toString()} оны ${functions.cdatetomonth(dateTimeFormat('yMd', getCurrentTimestamp)).toString()} сарын ${functions.cdatetoday(dateTimeFormat('yMd', getCurrentTimestamp)).toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 20.0,
                            ),
                            tileColor: FlutterFlowTheme.of(context).primaryText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'repaymentinfo',
                            queryParameters: {
                              'gereeID': serializeParam(
                                widget.gereeID,
                                ParamType.String,
                              ),
                              'olgodate': serializeParam(
                                functions.cFcurrenttimeshort(
                                    getCurrentTimestamp.toString()),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: ListTile(
                          title: Text(
                            'Зээл сунгах',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          subtitle: Text(
                            'Хүсэлт илгээх',
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 20.0,
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryText,
                          dense: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'loansch',
                              queryParameters: {
                                'gidd': serializeParam(
                                  widget.gereeID,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: ListTile(
                            title: Text(
                              'Зээл төлөлтийн хуваарь',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            subtitle: Text(
                              '${widget.olgodate}- аас ${widget.hugatsaa} сар',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 20.0,
                            ),
                            tileColor: FlutterFlowTheme.of(context).primaryText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'payhistory',
                              queryParameters: {
                                'gid': serializeParam(
                                  widget.gereeID,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: ListTile(
                            title: Text(
                              'Зээл төлөлтийн түүх',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            subtitle: Text(
                              '${dateTimeFormat('yMd', getCurrentTimestamp)}- хүртэл',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 20.0,
                            ),
                            tileColor: FlutterFlowTheme.of(context).primaryText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'loancontract',
                              queryParameters: {
                                'cid': serializeParam(
                                  widget.cid,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: ListTile(
                            title: Text(
                              'Зээлийн гэрээ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            subtitle: Text(
                              'Цахим зээлийн гэрээ',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 20.0,
                            ),
                            tileColor: FlutterFlowTheme.of(context).primaryText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
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
      ),
    );
  }
}
