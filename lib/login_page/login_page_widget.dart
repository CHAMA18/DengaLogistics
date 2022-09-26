import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
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
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/shift.gif',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Text(
                  'DENGA LOGISTICS',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Text(
                  'We develop our tracking system so you\ncan track your parcel in real-time',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Product Sans',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('SignUp');
                      },
                      text: 'Sign Up',
                      options: FFButtonOptions(
                        width: 230,
                        height: 50,
                        color: Color(0xFFC2E2F5),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Product Sans',
                                  color: Colors.black,
                                  useGoogleFonts: false,
                                ),
                        elevation: 10,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).btnText,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Product Sans',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      context.pushNamed('SignIn');
                    },
                    child: Text(
                      'Login',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Product Sans',
                            color: FlutterFlowTheme.of(context).tertiary400,
                            useGoogleFonts: false,
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
