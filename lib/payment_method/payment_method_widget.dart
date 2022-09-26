import '../components/payments_bottom_sheet_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({Key? key}) : super(key: key);

  @override
  _PaymentMethodWidgetState createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  bool? checkboxListTileValue;
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
      appBar: AppBar(
        backgroundColor: Color(0xFFC2E2F5),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
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
          'Payment ',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x44111417),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFFC2E2F5),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/Product_Logos-28.ico',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF95A1AC),
                                    ),
                                    child: CheckboxListTile(
                                      value: checkboxListTileValue ??= true,
                                      onChanged: (newValue) => setState(() =>
                                          checkboxListTileValue = newValue!),
                                      title: Text(
                                        'MTN Money',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Product Sans',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  child: PaymentsBottomSheetWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        text: 'Check Out',
                        options: FFButtonOptions(
                          width: 270,
                          height: 50,
                          color: Color(0xFFC2E2F5),
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Product Sans',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                useGoogleFonts: false,
                              ),
                          elevation: 20,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
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
