import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loadingdan_model.dart';
export 'loadingdan_model.dart';

class LoadingdanWidget extends StatefulWidget {
  const LoadingdanWidget({super.key});

  @override
  State<LoadingdanWidget> createState() => _LoadingdanWidgetState();
}

class _LoadingdanWidgetState extends State<LoadingdanWidget> {
  late LoadingdanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingdanModel());
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
      width: 150.0,
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Lottie.network(
        'https://lottiefiles.com/animations/animation-1702373528664-Tqc72eM59k',
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        fit: BoxFit.contain,
        animate: true,
      ),
    );
  }
}
