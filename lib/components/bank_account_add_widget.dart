import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bank_account_add_model.dart';
export 'bank_account_add_model.dart';

class BankAccountAddWidget extends StatefulWidget {
  const BankAccountAddWidget({super.key});

  @override
  State<BankAccountAddWidget> createState() => _BankAccountAddWidgetState();
}

class _BankAccountAddWidgetState extends State<BankAccountAddWidget> {
  late BankAccountAddModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankAccountAddModel());

    _model.dansniidugaarController ??= TextEditingController();
    _model.dansniidugaarFocusNode ??= FocusNode();

    _model.ezemshigchController ??= TextEditingController();
    _model.ezemshigchFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: BoxConstraints(
        maxHeight: 450.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).wight,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(13.0),
          topRight: Radius.circular(13.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Банкны данс нэмэх',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 32.0,
                  endIndent: 32.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: LoanserviceGroup.getbanklistCall.call(
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
                      final dropDownGetbanklistResponse = snapshot.data!;
                      return FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(
                          _model.dropDownValue ??= '050000',
                        ),
                        options: List<String>.from((getJsonField(
                          dropDownGetbanklistResponse.jsonBody,
                          r'''$..bankcode''',
                          true,
                        ) as List)
                            .map<String>((s) => s.toString())
                            .toList()!),
                        optionLabels: (getJsonField(
                          dropDownGetbanklistResponse.jsonBody,
                          r'''$..bankname''',
                          true,
                        ) as List)
                            .map<String>((s) => s.toString())
                            .toList()!,
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue = val),
                        width: double.infinity,
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 12.0,
                                ),
                        hintText: 'Банк сонгох',
                        fillColor: FlutterFlowTheme.of(context).primaryText,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 0.0,
                        borderRadius: 13.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: TextFormField(
                    controller: _model.dansniidugaarController,
                    focusNode: _model.dansniidugaarFocusNode,
                    autofocus: true,
                    textCapitalization: TextCapitalization.sentences,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Дансны дугаар',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 14.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).alternate,
                          fontSize: 14.0,
                        ),
                    keyboardType: TextInputType.number,
                    validator: _model.dansniidugaarControllerValidator
                        .asValidator(context),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: TextFormField(
                    controller: _model.ezemshigchController,
                    focusNode: _model.ezemshigchFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Данс эзэмшигчийн нэр',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 14.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).alternate,
                          fontSize: 14.0,
                        ),
                    validator: _model.ezemshigchControllerValidator
                        .asValidator(context),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 16.0),
            child: FFButtonWidget(
              onPressed: () async {
                if (FFAppState().username ==
                        (_model.ezemshigchController.text.toUpperCase())
                    ? true
                    : false) {
                  _model.apiResultubo =
                      await LoanserviceGroup.postbankaccountCall.call(
                    acc: _model.dansniidugaarController.text,
                    bankcode: _model.dropDownValue,
                    lid: FFAppState().cif,
                    authToken: currentAuthenticationToken,
                  );
                  if ((_model.apiResultubo?.succeeded ?? true)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Дансны дугаар амжилттай нэмлээ. ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                    setState(() {
                      FFAppState().bankinfo = true;
                    });

                    context.pushNamed('banckaccount');
                  }
                } else {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return WebViewAware(
                        child: AlertDialog(
                          title: Text('Алдаа'),
                          content: Text(
                              'Данс эзэмшигчийн нэр зөрүүтэй байна. Зөвхөн бүртгэлтэй хэрэглэгчийн эзэмшиж буй дансны дугаар оруулна уу!'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }

                setState(() {});
              },
              text: 'Нэмэх',
              options: FFButtonOptions(
                width: double.infinity,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: Color(0xFFF2F2F5),
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
    );
  }
}
