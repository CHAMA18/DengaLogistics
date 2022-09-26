import '../components/payments_confirmation_widget.dart';
import '../flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentsBottomSheetWidget extends StatefulWidget {
  const PaymentsBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _PaymentsBottomSheetWidgetState createState() =>
      _PaymentsBottomSheetWidgetState();
}

class _PaymentsBottomSheetWidgetState extends State<PaymentsBottomSheetWidget> {
  TextEditingController? textController2;
  final textFieldKey1 = GlobalKey();
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'PaymentMethod',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 1000),
                        ),
                      },
                    );
                  },
                  child: Icon(
                    Icons.cancel,
                    color: FlutterFlowTheme.of(context).textColor,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Product_Logos-28.ico',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Autocomplete<String>(
                      initialValue: TextEditingValue(),
                      optionsBuilder: (textEditingValue) {
                        if (textEditingValue.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return ['Option 1'].where((option) {
                          final lowercaseOption = option.toLowerCase();
                          return lowercaseOption
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      optionsViewBuilder: (context, onSelected, options) {
                        return AutocompleteOptionsList(
                          textFieldKey: textFieldKey1,
                          textController: textController1!,
                          options: options.toList(),
                          onSelected: onSelected,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Product Sans',
                                    color: Colors.black,
                                    useGoogleFonts: false,
                                  ),
                          textHighlightStyle: TextStyle(),
                          elevation: 4,
                          optionBackgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          optionHighlightColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          maxHeight: 200,
                        );
                      },
                      onSelected: (String selection) {
                        setState(() => textFieldSelectedOption1 = selection);
                        FocusScope.of(context).unfocus();
                      },
                      fieldViewBuilder: (
                        context,
                        textEditingController,
                        focusNode,
                        onEditingComplete,
                      ) {
                        textController1 = textEditingController;
                        return TextFormField(
                          key: textFieldKey1,
                          controller: textEditingController,
                          focusNode: focusNode,
                          onEditingComplete: onEditingComplete,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'MTN Phone Number ',
                            hintText: '096',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC2E2F5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC2E2F5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC2E2F5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC2E2F5),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Product Sans',
                                    color: Colors.black,
                                    useGoogleFonts: false,
                                  ),
                          keyboardType: TextInputType.phone,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                    child: TextFormField(
                      controller: textController2,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Price (ZMK)',
                        hintText: '00',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2E2F5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2E2F5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2E2F5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC2E2F5),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Product Sans',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ],
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
                    setState(() => FFAppState().LocalState =
                        functions.subWithdraw(FFAppState().LocalState,
                            int.parse(textController2!.text)));
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 1,
                            child: PaymentsConfirmationWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  text: 'Pay Now',
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
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
