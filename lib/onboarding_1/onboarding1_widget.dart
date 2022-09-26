import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding1Widget extends StatefulWidget {
  const Onboarding1Widget({Key? key}) : super(key: key);

  @override
  _Onboarding1WidgetState createState() => _Onboarding1WidgetState();
}

class _Onboarding1WidgetState extends State<Onboarding1Widget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      await pageViewController?.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      await Future.delayed(const Duration(milliseconds: 3000));
      await pageViewController?.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      await Future.delayed(const Duration(milliseconds: 3000));
      await pageViewController?.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 500,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                            child: PageView(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Image.asset(
                                  'assets/images/animation_500_l86weozu.gif',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                                Image.asset(
                                  'assets/images/59830-shipping.gif',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                                Image.asset(
                                  'assets/images/108901-truck.gif',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Wrap(
                  spacing: 0,
                  runSpacing: 0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    AutoSizeText(
                      'A digital health platform that works with a network of drones and motorbikes, efficiently and sustainably connecting the incapacitated local clinics and health centers to central hospitals for optimal local patient support.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Product Sans',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Onboarding_2');
                      },
                      text: '',
                      icon: Icon(
                        Icons.arrow_back,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 60,
                        height: 60,
                        color: Color(0xFFC2E2F5),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Product Sans',
                                  color: Colors.white,
                                  useGoogleFonts: false,
                                ),
                        elevation: 10,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(160),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Dashboard');
                      },
                      text: '',
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 60,
                        height: 60,
                        color: Color(0xFFC2E2F5),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Product Sans',
                                  color: Colors.white,
                                  useGoogleFonts: false,
                                ),
                        elevation: 10,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(120),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
