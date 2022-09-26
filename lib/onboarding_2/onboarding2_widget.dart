import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding2Widget extends StatefulWidget {
  const Onboarding2Widget({Key? key}) : super(key: key);

  @override
  _Onboarding2WidgetState createState() => _Onboarding2WidgetState();
}

class _Onboarding2WidgetState extends State<Onboarding2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/deliv.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                child: AutoSizeText(
                  'For parcels up to 5KG, \nDenga Logistics have the cheapest domestic prices \nfor delivery only services in Lusaka',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Product Sans',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 14,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'Onboarding_1',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 2000),
                            ),
                          },
                        );
                      },
                      text: 'Get Started',
                      icon: Icon(
                        Icons.arrow_right_alt,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 230,
                        height: 40,
                        color: Color(0xFFC2E2F5),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Product Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  useGoogleFonts: false,
                                ),
                        elevation: 10,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
