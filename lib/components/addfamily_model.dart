import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/registers1_widget.dart';
import '/components/registers2_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'addfamily_widget.dart' show AddfamilyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddfamilyModel extends FlutterFlowModel<AddfamilyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for dansniidugaar widget.
  FocusNode? dansniidugaarFocusNode;
  TextEditingController? dansniidugaarController;
  String? Function(BuildContext, String?)? dansniidugaarControllerValidator;
  // State field(s) for ezemshigch widget.
  FocusNode? ezemshigchFocusNode1;
  TextEditingController? ezemshigchController1;
  String? Function(BuildContext, String?)? ezemshigchController1Validator;
  // State field(s) for regnum widget.
  FocusNode? regnumFocusNode;
  TextEditingController? regnumController;
  final regnumMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? regnumControllerValidator;
  // State field(s) for ezemshigch widget.
  FocusNode? ezemshigchFocusNode2;
  TextEditingController? ezemshigchController2;
  final ezemshigchMask2 = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? ezemshigchController2Validator;
  // State field(s) for ezemshigch widget.
  FocusNode? ezemshigchFocusNode3;
  TextEditingController? ezemshigchController3;
  String? Function(BuildContext, String?)? ezemshigchController3Validator;
  // State field(s) for ezemshigch widget.
  FocusNode? ezemshigchFocusNode4;
  TextEditingController? ezemshigchController4;
  String? Function(BuildContext, String?)? ezemshigchController4Validator;
  // Stores action output result for [Backend Call - API (postfamily)] action in Button widget.
  ApiCallResponse? apiResultx6p;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dansniidugaarFocusNode?.dispose();
    dansniidugaarController?.dispose();

    ezemshigchFocusNode1?.dispose();
    ezemshigchController1?.dispose();

    regnumFocusNode?.dispose();
    regnumController?.dispose();

    ezemshigchFocusNode2?.dispose();
    ezemshigchController2?.dispose();

    ezemshigchFocusNode3?.dispose();
    ezemshigchController3?.dispose();

    ezemshigchFocusNode4?.dispose();
    ezemshigchController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
