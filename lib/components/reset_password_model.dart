import '/backend/api_requests/api_calls.dart';
import '/components/registers1_widget.dart';
import '/components/registers2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for regnum widget.
  FocusNode? regnumFocusNode;
  TextEditingController? regnumController;
  final regnumMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? regnumControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  final textFieldMask1 = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (postotp)] action in Button widget.
  ApiCallResponse? senttop1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    regnumFocusNode?.dispose();
    regnumController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
