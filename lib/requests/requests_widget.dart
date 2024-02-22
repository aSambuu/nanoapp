import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'requests_model.dart';
export 'requests_model.dart';

class RequestsWidget extends StatefulWidget {
  const RequestsWidget({super.key});

  @override
  State<RequestsWidget> createState() => _RequestsWidgetState();
}

class _RequestsWidgetState extends State<RequestsWidget>
    with TickerProviderStateMixin {
  late RequestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.0, 16.0, 32.0, 16.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            badges.Badge(
                              badgeContent: Text(
                                '1',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                              ),
                              showBadge: true,
                              shape: badges.BadgeShape.circle,
                              badgeColor:
                                  FlutterFlowTheme.of(context).customColor1,
                              elevation: 4.0,
                              padding: EdgeInsets.all(8.0),
                              position: badges.BadgePosition.topEnd(),
                              animationType: badges.BadgeAnimationType.scale,
                              toAnimate: true,
                              child: Icon(
                                Icons.notifications_active,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 32.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).primary,
                              FlutterFlowTheme.of(context).secondary
                            ],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.98, -1.0),
                            end: AlignmentDirectional(-0.98, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Таны илгээсэн хүсэлтүүд',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
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
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: FlutterFlowTheme.of(context).secondary,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                  ),
                          unselectedLabelStyle: TextStyle(),
                          indicatorColor:
                              FlutterFlowTheme.of(context).secondary,
                          tabs: [
                            Tab(
                              text: 'Судалж буй',
                            ),
                            Tab(
                              text: 'Шийдсэн',
                            ),
                            Tab(
                              text: 'Татгалзсан',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (FFAppState().cif == 'null')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Одоогоор идвэхтэй бичилт байхгүй байна. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (FFAppState().cif != 'null')
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: (_model.apiRequestCompleter2 ??=
                                                Completer<ApiCallResponse>()
                                                  ..complete(LoanserviceGroup
                                                      .getloanrequestCall
                                                      .call(
                                                    lid: FFAppState().cif,
                                                    lflag1: '<',
                                                    authToken:
                                                        currentAuthenticationToken,
                                                  )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitFadingFour(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          final listViewGetloanrequestResponse =
                                              snapshot.data!;
                                          return Builder(
                                            builder: (context) {
                                              final reqlist = getJsonField(
                                                listViewGetloanrequestResponse
                                                    .jsonBody,
                                                r'''$..content''',
                                              ).toList();
                                              return RefreshIndicator(
                                                onRefresh: () async {
                                                  setState(() => _model
                                                          .apiRequestCompleter2 =
                                                      null);
                                                  await _model
                                                      .waitForApiRequestCompleted2();
                                                },
                                                child: ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: reqlist.length,
                                                  itemBuilder:
                                                      (context, reqlistIndex) {
                                                    final reqlistItem =
                                                        reqlist[reqlistIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .wight,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      13.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  16.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'ID:${getJsonField(
                                                                        reqlistItem,
                                                                        r'''$..ccode''',
                                                                      ).toString()}/${valueOrDefault<String>(
                                                                        functions
                                                                            .cFcurrenttimeshort(getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..lwdate''',
                                                                        ).toString()),
                                                                        '2023-01-01',
                                                                      )}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .cFstatuscode(getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..lflag''',
                                                                        )),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Divider(
                                                                thickness: 1.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Зориулалт: ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        reqlistItem,
                                                                        r'''$..lded''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Хүссэн хэмжээ:',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                functions.cFcomma(getJsonField(
                                                                                  reqlistItem,
                                                                                  r'''$..ldun''',
                                                                                ).toString()),
                                                                                '0',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Inter',
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              '₮',
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'Зээлийн хугацаа:',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              getJsonField(
                                                                                reqlistItem,
                                                                                r'''$..ltuldate''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Inter',
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'сар',
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              if ('${getJsonField(
                                                                    reqlistItem,
                                                                    r'''$.lflag''',
                                                                  ).toString()}' ==
                                                                  '0')
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Зээлийн хүсэлт цуцлах уу? ',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).accent3,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderColor: FlutterFlowTheme.of(context).wight,
                                                                                borderRadius: 20.0,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 30.0,
                                                                                fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                icon: Icon(
                                                                                  Icons.delete_sweep_outlined,
                                                                                  color: FlutterFlowTheme.of(context).customColor1,
                                                                                  size: 14.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  var _shouldSetState = false;
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return WebViewAware(
                                                                                            child: AlertDialog(
                                                                                              title: Text('Анхаар!'),
                                                                                              content: Text('Та энэ зээлийн хүсэлт цуцлахдаа итгэлтэй байна уу?'),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                  child: Text('Үгүй'),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                  child: Text('Цуцлах'),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ) ??
                                                                                      false;
                                                                                  if (confirmDialogResponse) {
                                                                                    _model.apiResultfagCopy = await LoanserviceGroup.delloanrequestCall.call(
                                                                                      reqid: getJsonField(
                                                                                        reqlistItem,
                                                                                        r'''$..ccode''',
                                                                                      ).toString(),
                                                                                      authToken: currentAuthenticationToken,
                                                                                    );
                                                                                    _shouldSetState = true;
                                                                                    if ((_model.apiResultfagCopy?.succeeded ?? true)) {
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Хүсэлтийг цуцаллаа!',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                          ),
                                                                                          duration: Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                        ),
                                                                                      );
                                                                                    } else {
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Хүсэлт цуцлах үйлдэл амжилтгүй!',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                          ),
                                                                                          duration: Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                        ),
                                                                                      );
                                                                                    }

                                                                                    context.pushNamed('requests');
                                                                                  } else {
                                                                                    if (_shouldSetState) setState(() {});
                                                                                    return;
                                                                                  }

                                                                                  if (_shouldSetState) setState(() {});
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            40.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            final selectedMedia =
                                                                                await selectMediaWithSourceBottomSheet(
                                                                              context: context,
                                                                              allowPhoto: true,
                                                                            );
                                                                            if (selectedMedia != null &&
                                                                                selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                              setState(() => _model.isDataUploading = true);
                                                                              var selectedUploadedFiles = <FFUploadedFile>[];

                                                                              try {
                                                                                selectedUploadedFiles = selectedMedia
                                                                                    .map((m) => FFUploadedFile(
                                                                                          name: m.storagePath.split('/').last,
                                                                                          bytes: m.bytes,
                                                                                          height: m.dimensions?.height,
                                                                                          width: m.dimensions?.width,
                                                                                          blurHash: m.blurHash,
                                                                                        ))
                                                                                    .toList();
                                                                              } finally {
                                                                                _model.isDataUploading = false;
                                                                              }
                                                                              if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                setState(() {
                                                                                  _model.uploadedLocalFile = selectedUploadedFiles.first;
                                                                                });
                                                                              } else {
                                                                                setState(() {});
                                                                                return;
                                                                              }
                                                                            }

                                                                            _model.apiResultul7 =
                                                                                await LoanserviceGroup.postattachfileCall.call(
                                                                              relatedid: getJsonField(
                                                                                reqlistItem,
                                                                                r'''$..ccode''',
                                                                              ).toString(),
                                                                              relatedModel: 'mn.isolvers.efin.db.web.LoanReq',
                                                                              file: _model.uploadedLocalFile,
                                                                              authToken: currentAuthenticationToken,
                                                                            );
                                                                            if ((_model.apiResultul7?.succeeded ??
                                                                                true)) {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    getJsonField(
                                                                                      (_model.apiResultul7?.jsonBody ?? ''),
                                                                                      r'''$..message''',
                                                                                    ).toString(),
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    getJsonField(
                                                                                      (_model.apiResultul7?.jsonBody ?? ''),
                                                                                      r'''$..message''',
                                                                                    ).toString(),
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  duration: Duration(milliseconds: 4000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              );
                                                                            }

                                                                            setState(() {});
                                                                          },
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Бичиг баримт хавсаргах уу? ',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).wight,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              FutureBuilder<ApiCallResponse>(
                                                                                future: LoanserviceGroup.getatachedfileCall.call(
                                                                                  ccode: getJsonField(
                                                                                    reqlistItem,
                                                                                    r'''$..ccode''',
                                                                                  ).toString(),
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
                                                                                  final badgeGetatachedfileResponse = snapshot.data!;
                                                                                  return badges.Badge(
                                                                                    badgeContent: Text(
                                                                                      '${getJsonField(
                                                                                        badgeGetatachedfileResponse.jsonBody,
                                                                                        r'''$..numberOfElements''',
                                                                                      ).toString()}',
                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w300,
                                                                                          ),
                                                                                    ),
                                                                                    showBadge: '${getJsonField(
                                                                                          badgeGetatachedfileResponse.jsonBody,
                                                                                          r'''$..numberOfElements''',
                                                                                        ).toString()}' !=
                                                                                        '0',
                                                                                    shape: badges.BadgeShape.circle,
                                                                                    badgeColor: FlutterFlowTheme.of(context).customColor1,
                                                                                    elevation: 4.0,
                                                                                    padding: EdgeInsets.all(4.0),
                                                                                    position: badges.BadgePosition.topEnd(),
                                                                                    animationType: badges.BadgeAnimationType.scale,
                                                                                    toAnimate: true,
                                                                                    child: Icon(
                                                                                      Icons.attachment,
                                                                                      color: FlutterFlowTheme.of(context).wight,
                                                                                      size: 28.0,
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ],
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
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (FFAppState().cif == 'null')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Одоогоор идвэхтэй бичилт байхгүй байна. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (FFAppState().cif != 'null')
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: (_model.apiRequestCompleter1 ??=
                                                Completer<ApiCallResponse>()
                                                  ..complete(LoanserviceGroup
                                                      .getloanrequestCall
                                                      .call(
                                                    lid: FFAppState().cif,
                                                    lflag1: '>',
                                                    authToken:
                                                        currentAuthenticationToken,
                                                  )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitFadingFour(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          final listViewGetloanrequestResponse =
                                              snapshot.data!;
                                          return Builder(
                                            builder: (context) {
                                              final reqlist = getJsonField(
                                                listViewGetloanrequestResponse
                                                    .jsonBody,
                                                r'''$..content''',
                                              ).toList();
                                              return RefreshIndicator(
                                                onRefresh: () async {
                                                  setState(() => _model
                                                          .apiRequestCompleter1 =
                                                      null);
                                                  await _model
                                                      .waitForApiRequestCompleted1();
                                                },
                                                child: ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: reqlist.length,
                                                  itemBuilder:
                                                      (context, reqlistIndex) {
                                                    final reqlistItem =
                                                        reqlist[reqlistIndex];
                                                    return Visibility(
                                                      visible: '${getJsonField(
                                                            reqlistItem,
                                                            r'''$..lflag''',
                                                          ).toString()}' !=
                                                          '5',
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .wight,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        13.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'ID:${getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..ccode''',
                                                                        ).toString()}/${valueOrDefault<String>(
                                                                          functions
                                                                              .cFcurrenttimeshort(getJsonField(
                                                                            reqlistItem,
                                                                            r'''$..lwdate''',
                                                                          ).toString()),
                                                                          '0',
                                                                        )}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall,
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .cFstatuscode(getJsonField(
                                                                            reqlistItem,
                                                                            r'''$..lflag''',
                                                                          )),
                                                                          '0',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      1.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Зориулалт :',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            reqlistItem,
                                                                            r'''$..lded''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Хүссэн хэмжээ:',
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Text(
                                                                                  getJsonField(
                                                                                    reqlistItem,
                                                                                    r'''$..ldun''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                                Text(
                                                                                  '₮',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Хүссэн хугацаа:    ',
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                              Text(
                                                                                getJsonField(
                                                                                  reqlistItem,
                                                                                  r'''$..ltuldate''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      1.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Шийдсэн дүн:',
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    functions.cFcomma(getJsonField(
                                                                                      reqlistItem,
                                                                                      r'''$..dis_amount''',
                                                                                    ).toString()),
                                                                                    '0',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  '₮',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Шийдсэн  хүү:',
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  getJsonField(
                                                                                    reqlistItem,
                                                                                    r'''$..dis_rate''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  '%',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Шийдсэн хугацаа:',
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                              Text(
                                                                                getJsonField(
                                                                                  reqlistItem,
                                                                                  r'''$..dis_dur''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Зөвшөөрсөн эсэх:',
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                              Text(
                                                                                getJsonField(
                                                                                          reqlistItem,
                                                                                          r'''$..ua''',
                                                                                        ) ==
                                                                                        '0'
                                                                                    ? 'Үгүй'
                                                                                    : 'Тийм',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if (('${getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..lflag''',
                                                                        ).toString()}' ==
                                                                        '4') &&
                                                                    (getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..ua''',
                                                                        ) ==
                                                                        '0'))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                40.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  'Шийдвэрийг зөвшөөрөх үү?',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).accent3,
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).wight,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 30.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                    icon: Icon(
                                                                                      Icons.check_outlined,
                                                                                      color: FlutterFlowTheme.of(context).success,
                                                                                      size: 14.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      var _shouldSetState = false;
                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                            context: context,
                                                                                            builder: (alertDialogContext) {
                                                                                              return WebViewAware(
                                                                                                child: AlertDialog(
                                                                                                  title: Text('Анхаар!'),
                                                                                                  content: Text('Та  зээлийн нөхцөлийг зөвшөөрч байна уу? '),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                      child: Text('Үгүй'),
                                                                                                    ),
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                      child: Text('Тийм'),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ) ??
                                                                                          false;
                                                                                      if (!confirmDialogResponse) {
                                                                                        Navigator.pop(context);
                                                                                        if (_shouldSetState) setState(() {});
                                                                                        return;
                                                                                      }
                                                                                      _model.apiResultpc4 = await LoanserviceGroup.postuserapprovalCall.call(
                                                                                        ccode: getJsonField(
                                                                                          reqlistItem,
                                                                                          r'''$..ccode''',
                                                                                        ).toString(),
                                                                                        ua: '1',
                                                                                        authToken: currentAuthenticationToken,
                                                                                      );
                                                                                      _shouldSetState = true;

                                                                                      context.pushNamed('requests');

                                                                                      if (_shouldSetState) setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).wight,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 30.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                    icon: Icon(
                                                                                      Icons.clear,
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      size: 14.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return WebViewAware(
                                                                                            child: AlertDialog(
                                                                                              title: Text('Анхаар!'),
                                                                                              content: Text('Та шийдвэрийг зөвшөөрөөгүй бол тухайн зээл олгогдохгүй болохыг анхаарана уу!'),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                  child: Text('Ok'),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                if (('${getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..lflag''',
                                                                        ).toString()}' ==
                                                                        '4') &&
                                                                    (getJsonField(
                                                                          reqlistItem,
                                                                          r'''$.ua''',
                                                                        ) ==
                                                                        '1'))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                40.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                    child: Text(
                                                                                      'Таны зөвшөөрлийн дагуу гэрээ байгуулах шатанд шилжлээ.',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).wight,
                                                                                            fontSize: 12.0,
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
                                                                if ('${getJsonField(
                                                                      reqlistItem,
                                                                      r'''$..lflag''',
                                                                    ).toString()}' ==
                                                                    '3')
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                40.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                    child: Text(
                                                                                      'Та салбар дээр  очиж гэрээнд  гарын үсэг зурсанаар таны зээл  олгогдох болно!',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 12.0,
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
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (FFAppState().cif == 'null')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Одоогоор идвэхтэй бичилт байхгүй байна. ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (FFAppState().cif != 'null')
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: (_model.apiRequestCompleter3 ??=
                                                Completer<ApiCallResponse>()
                                                  ..complete(LoanserviceGroup
                                                      .getloanrequestCall
                                                      .call(
                                                    lid: FFAppState().cif,
                                                    lflag1: '=',
                                                    authToken:
                                                        currentAuthenticationToken,
                                                  )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitFadingFour(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          final listViewGetloanrequestResponse =
                                              snapshot.data!;
                                          return Builder(
                                            builder: (context) {
                                              final reqlist = getJsonField(
                                                listViewGetloanrequestResponse
                                                    .jsonBody,
                                                r'''$..content''',
                                              ).toList();
                                              return RefreshIndicator(
                                                onRefresh: () async {
                                                  setState(() => _model
                                                          .apiRequestCompleter3 =
                                                      null);
                                                  await _model
                                                      .waitForApiRequestCompleted3();
                                                },
                                                child: ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: reqlist.length,
                                                  itemBuilder:
                                                      (context, reqlistIndex) {
                                                    final reqlistItem =
                                                        reqlist[reqlistIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .wight,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      13.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  16.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'ID:${getJsonField(
                                                                        reqlistItem,
                                                                        r'''$..ccode''',
                                                                      ).toString()}/${valueOrDefault<String>(
                                                                        functions
                                                                            .cFcurrenttimeshort(getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..lwdate''',
                                                                        ).toString()),
                                                                        '0',
                                                                      )}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .cFstatuscode(getJsonField(
                                                                          reqlistItem,
                                                                          r'''$..lflag''',
                                                                        )),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Divider(
                                                                thickness: 1.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Зориулалт :',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        reqlistItem,
                                                                        r'''$..lded''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Хүссэн хэмжээ: ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        reqlistItem,
                                                                        r'''$..ldun''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '₮',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Татгалзсан шалтгаан:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        reqlistItem,
                                                                        r'''$..dis_note''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customColor1,
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            40.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Зээлийн хүсэлт цуцлах уу? ',
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: FlutterFlowTheme.of(context).accent3,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            FlutterFlowIconButton(
                                                                              borderColor: FlutterFlowTheme.of(context).wight,
                                                                              borderRadius: 20.0,
                                                                              borderWidth: 1.0,
                                                                              buttonSize: 30.0,
                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                              icon: Icon(
                                                                                Icons.delete_sweep_outlined,
                                                                                color: FlutterFlowTheme.of(context).customColor1,
                                                                                size: 14.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                var _shouldSetState = false;
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('Анхаар!'),
                                                                                            content: Text('Та энэ зээлийн хүсэлт цуцлахдаа итгэлтэй байна уу?'),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                child: Text('Үгүй'),
                                                                                              ),
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                child: Text('Цуцлах'),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ) ??
                                                                                    false;
                                                                                if (confirmDialogResponse) {
                                                                                  _model.apiResultfagCopy1 = await LoanserviceGroup.delloanrequestCall.call(
                                                                                    reqid: getJsonField(
                                                                                      reqlistItem,
                                                                                      r'''$..ccode''',
                                                                                    ).toString(),
                                                                                    authToken: currentAuthenticationToken,
                                                                                  );
                                                                                  _shouldSetState = true;
                                                                                  if ((_model.apiResultfagCopy1?.succeeded ?? true)) {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Хүсэлтийг цуцаллаа!',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  } else {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Хүсэлт цуцлах үйлдэл амжилтгүй!',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  if (_shouldSetState) setState(() {});
                                                                                  return;
                                                                                }

                                                                                if (_shouldSetState) setState(() {});
                                                                              },
                                                                            ),
                                                                          ],
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
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
