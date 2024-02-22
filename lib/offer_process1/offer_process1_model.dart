import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'offer_process1_widget.dart' show OfferProcess1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OfferProcess1Model extends FlutterFlowModel<OfferProcess1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DUN widget.
  FocusNode? dunFocusNode;
  TextEditingController? dunController;
  String? Function(BuildContext, String?)? dunControllerValidator;
  // State field(s) for zeeliindun widget.
  double? zeeliindunValue;
  // Stores action output result for [Backend Call - API (productlistfilter)] action in Button widget.
  ApiCallResponse? apiResultpzj;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    dunFocusNode?.dispose();
    dunController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
