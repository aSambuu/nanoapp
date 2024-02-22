import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bank_account_add_widget.dart' show BankAccountAddWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BankAccountAddModel extends FlutterFlowModel<BankAccountAddWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for dansniidugaar widget.
  FocusNode? dansniidugaarFocusNode;
  TextEditingController? dansniidugaarController;
  String? Function(BuildContext, String?)? dansniidugaarControllerValidator;
  // State field(s) for ezemshigch widget.
  FocusNode? ezemshigchFocusNode;
  TextEditingController? ezemshigchController;
  String? Function(BuildContext, String?)? ezemshigchControllerValidator;
  // Stores action output result for [Backend Call - API (postbankaccount)] action in Button widget.
  ApiCallResponse? apiResultubo;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dansniidugaarFocusNode?.dispose();
    dansniidugaarController?.dispose();

    ezemshigchFocusNode?.dispose();
    ezemshigchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
