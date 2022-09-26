import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class BikesBookingsWidget extends StatefulWidget {
  const BikesBookingsWidget({Key? key}) : super(key: key);

  @override
  _BikesBookingsWidgetState createState() => _BikesBookingsWidgetState();
}

class _BikesBookingsWidgetState extends State<BikesBookingsWidget> {
  String? dropDownValue1;
  String? dropDownValue2;
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Maps');

      await Future.delayed(const Duration(milliseconds: 2000));
    });

    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFC2E2F5),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          fillColor: Color(0xFFC2E2F5),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('Dashboard');
          },
        ),
        title: Text(
          'Drone Booking',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Product Sans',
                color: Colors.black,
                fontSize: 24,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Image.asset(
                            'assets/images/90605-delivery-bike.gif',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FlutterFlowDropDown(
                  options: [
                    'Blood Samples ',
                    'Urine Samples ',
                    'Covid Samples ',
                    'Contraceptives ',
                    'Sputum Samples ',
                    'Rapid Diagnostic Kits',
                    'Life-Saving Medicine ',
                    'Stool Samples '
                  ],
                  onChanged: (val) => setState(() => dropDownValue1 = val),
                  width: 180,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                  hintText: 'Type of Medical Supplies ',
                  fillColor: Color(0xFFC2E2F5),
                  elevation: 2,
                  borderColor: Color(0xFFC2E2F5),
                  borderWidth: 0,
                  borderRadius: 6,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FlutterFlowDropDown(
                  options: ['0-2kg', '2-4kg', '4-6kg', '6-8kg', '8-10kg'],
                  onChanged: (val) => setState(() => dropDownValue2 = val),
                  width: 240,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                  hintText: 'Estimated Total Weight',
                  fillColor: Color(0xFFC2E2F5),
                  elevation: 2,
                  borderColor: Color(0xFFC2E2F5),
                  borderWidth: 0,
                  borderRadius: 6,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: TextFormField(
                  controller: textController1,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Detailed Description',
                    hintText: 'Blood (500g to 2kg), Temperature (2 to 8 C)',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Color(0xFFC2E2F5),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: TextFormField(
                  controller: textController2,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Delivery From ',
                    hintText: 'Robin Street, West Wood, Lusaka',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Color(0xFFC2E2F5),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                  keyboardType: TextInputType.streetAddress,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: TextFormField(
                  controller: textController3,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Delivery To',
                    hintText: 'Robin Street, West Wood, Lusaka',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFC2E2F5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFC2E2F5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Color(0xFFC2E2F5),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                  keyboardType: TextInputType.streetAddress,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Future.delayed(const Duration(milliseconds: 2000));

                    context.pushNamed('Maps');
                  },
                  text: 'Confirm',
                  options: FFButtonOptions(
                    width: 180,
                    height: 40,
                    color: Color(0xFFC2E2F5),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Product Sans',
                          color: Colors.white,
                          useGoogleFonts: false,
                        ),
                    elevation: 20,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
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
