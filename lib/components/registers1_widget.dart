import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registers1_model.dart';
export 'registers1_model.dart';

class Registers1Widget extends StatefulWidget {
  const Registers1Widget({super.key});

  @override
  State<Registers1Widget> createState() => _Registers1WidgetState();
}

class _Registers1WidgetState extends State<Registers1Widget> {
  late Registers1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Registers1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: FlutterFlowChoiceChips(
                options: [
                  ChipData('А'),
                  ChipData('Б'),
                  ChipData('В'),
                  ChipData('Г'),
                  ChipData('Д'),
                  ChipData('Е'),
                  ChipData('Ё'),
                  ChipData('Ж'),
                  ChipData('З'),
                  ChipData('И'),
                  ChipData('Й'),
                  ChipData('К'),
                  ChipData('Л'),
                  ChipData('М'),
                  ChipData('Н'),
                  ChipData('О'),
                  ChipData('Ө'),
                  ChipData('П'),
                  ChipData('Р'),
                  ChipData('С'),
                  ChipData('Т'),
                  ChipData('У'),
                  ChipData('Ү'),
                  ChipData('Ф'),
                  ChipData('Х'),
                  ChipData('Ц'),
                  ChipData('Ч'),
                  ChipData('Ш'),
                  ChipData('Щ'),
                  ChipData('Ъ'),
                  ChipData('Ы'),
                  ChipData('Ь'),
                  ChipData('Э'),
                  ChipData('Ю'),
                  ChipData('Я')
                ],
                onChanged: (val) async {
                  setState(() => _model.choiceChipsValue = val?.firstOrNull);
                  setState(() {
                    FFAppState().reg1 = _model.choiceChipsValue!;
                  });
                  await Future.delayed(const Duration(milliseconds: 500));
                  Navigator.pop(context);
                },
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                  iconColor: FlutterFlowTheme.of(context).primaryText,
                  iconSize: 0.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).primaryText,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 20.0,
                      ),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  iconSize: 18.0,
                  elevation: 0.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                chipSpacing: 8.0,
                rowSpacing: 8.0,
                multiselect: false,
                alignment: WrapAlignment.spaceBetween,
                controller: _model.choiceChipsValueController ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                wrapped: true,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).wight,
                    ),
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
