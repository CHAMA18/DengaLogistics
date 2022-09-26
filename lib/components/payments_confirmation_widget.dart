import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentsConfirmationWidget extends StatefulWidget {
  const PaymentsConfirmationWidget({Key? key}) : super(key: key);

  @override
  _PaymentsConfirmationWidgetState createState() =>
      _PaymentsConfirmationWidgetState();
}

class _PaymentsConfirmationWidgetState
    extends State<PaymentsConfirmationWidget> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0, -0.05),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.55),
                        child: Image.asset(
                          'assets/images/37960-online-payment.gif',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.4,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0.15),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'The Payment Was Sucessful',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Product Sans',
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.35),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Dashboard');
                                  },
                                  text: 'Back to Dashboard',
                                  options: FFButtonOptions(
                                    width: 240,
                                    height: 40,
                                    color: Color(0xFFC2E2F5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
