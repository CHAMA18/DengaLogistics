import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController? confirmPasswordController;

  late bool confirmPasswordVisibility;
  TextEditingController? emailAddressController;
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? passwordController;

  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailAddressController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    confirmPasswordController?.dispose();
    emailAddressController?.dispose();
    firstNameController?.dispose();
    lastNameController?.dispose();
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
                        Hero(
                          tag: 'T1',
                          transitionOnUserGestures: true,
                          child: Image.asset(
                            'assets/images/output-onlinepngtools_(1).png',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.35,
                            fit: BoxFit.scaleDown,
                          ),
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
                                  'Sign Up',
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
                              'Add your details to sign up',
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
                              EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                          child: TextFormField(
                            controller: firstNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'First Name',
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
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
                          child: TextFormField(
                            controller: lastNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Last Name',
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
                            keyboardType: TextInputType.name,
                          ),
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
                          child: TextFormField(
                            controller: confirmPasswordController,
                            obscureText: !confirmPasswordVisibility,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Confirm Password',
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
                                  () => confirmPasswordVisibility =
                                      !confirmPasswordVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  confirmPasswordVisibility
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
                              GoRouter.of(context).prepareAuthEvent(true);
                              if (passwordController?.text !=
                                  confirmPasswordController?.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Passwords don\'t match!',
                                    ),
                                  ),
                                );
                                return;
                              }

                              final user = await createAccountWithEmail(
                                context,
                                emailAddressController!.text,
                                passwordController!.text,
                              );
                              if (user == null) {
                                return;
                              }

                              final usersCreateData = createUsersRecordData(
                                firstName: firstNameController!.text,
                                lastName: lastNameController!.text,
                              );
                              await UsersRecord.collection
                                  .doc(user.uid)
                                  .update(usersCreateData);

                              context.pushNamedAuth(
                                'Onboarding_1',
                                mounted,
                                ignoreRedirect: true,
                              );
                            },
                            text: 'Sign Up',
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
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
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
