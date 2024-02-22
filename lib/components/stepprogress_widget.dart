import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stepprogress_model.dart';
export 'stepprogress_model.dart';

class StepprogressWidget extends StatefulWidget {
  const StepprogressWidget({super.key});

  @override
  State<StepprogressWidget> createState() => _StepprogressWidgetState();
}

class _StepprogressWidgetState extends State<StepprogressWidget> {
  late StepprogressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepprogressModel());
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
      width: 300.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 17.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      Icon(
                        Icons.change_circle,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 17.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      Icon(
                        Icons.playlist_add_check_circle_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 17.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      badges.Badge(
                        badgeContent: Text(
                          '1',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        showBadge: true,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 2.0,
                        padding: EdgeInsets.all(4.1),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: FaIcon(
                          FontAwesomeIcons.stopCircle,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 17.0,
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 17.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Шинэ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        'Судалсан',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        'Шийдсэн',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        'Татгалзсан',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        'Гэрээ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 10.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
