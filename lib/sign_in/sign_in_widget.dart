import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;

  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/output-onlinepngtools_(1).png',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.35,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'Login',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Product Sans',
                                        color: Colors.black,
                                        fontSize: 24,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Enter your details to login',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Product Sans',
                                    color: Colors.black,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
                          child: TextFormField(
                            controller: emailAddressController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Email Address',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Color(0xFFC2E2F5),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Product Sans',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: !passwordVisibility,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Color(0xFFC2E2F5),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () =>
                                      passwordVisibility = !passwordVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Product Sans',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Dashboard');
                            },
                            text: 'Login',
                            options: FFButtonOptions(
                              width: 180,
                              height: 40,
                              color: Color(0xFFC2E2F5),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Product Sans',
                                    color: Colors.black,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 10,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
