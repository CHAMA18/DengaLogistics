import '../components/payments_deposit_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget>
    with TickerProviderStateMixin {
  String? choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 1200,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.4, -0.12),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AutoSizeText(
                            'Select Province',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Product Sans',
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xFFC2E2F5),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0.55),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'ZMK',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Product Sans',
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      GradientText(
                                        FFAppState().LocalState.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Product Sans',
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .textColor,
                                          Colors.black
                                        ],
                                        gradientDirection:
                                            GradientDirection.ltr,
                                        gradientType: GradientType.linear,
                                      ).animated([
                                        animationsMap[
                                            'textOnPageLoadAnimation']!
                                      ]),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Balance',
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
                                Align(
                                  alignment: AlignmentDirectional(0, -0.8),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            context.pushNamed('ProfilePage');
                                          },
                                          child: Icon(
                                            Icons.settings_outlined,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.8),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              child: PaymentsDepositWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    text: 'Deposit',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Color(0xFFC2E2F5),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Product Sans',
                                            color: Colors.black,
                                            useGoogleFonts: false,
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.66),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.goNamed('BikesBookings');

                            await Future.delayed(
                                const Duration(milliseconds: 2000));
                          },
                          text: 'Motorbike',
                          options: FFButtonOptions(
                            width: 180,
                            height: 40,
                            color: Color(0xFFC2E2F5),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Product Sans',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                            elevation: 20,
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'DroneBookings',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          text: 'Drones',
                          options: FFButtonOptions(
                            width: 180,
                            height: 40,
                            color: Color(0xFFC2E2F5),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Product Sans',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                            elevation: 20,
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.38),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Bookings',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Product Sans',
                                    color: Colors.black,
                                    fontSize: 24,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.4),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlipCard(
                          fill: Fill.fillBack,
                          direction: FlipDirection.HORIZONTAL,
                          speed: 400,
                          front: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlipCard(
                                fill: Fill.fillBack,
                                direction: FlipDirection.HORIZONTAL,
                                speed: 400,
                                front: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          'Front',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Product Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Image.asset(
                                          'assets/images/65176-drone.gif',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                back: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'assets/images/85315-delivery-boy.gif',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          back: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Back',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Product Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0.19),
                    child: FlutterFlowChoiceChips(
                      initiallySelected: [
                        if (choiceChipsValue != null) choiceChipsValue!
                      ],
                      options: [
                        ChipData('Lusaka'),
                        ChipData('Copperbelt'),
                        ChipData('Luapula'),
                        ChipData('North Western'),
                        ChipData('Western '),
                        ChipData('Muchinga'),
                        ChipData('Northern'),
                        ChipData('Eastern'),
                        ChipData('Southern'),
                        ChipData('Central')
                      ],
                      onChanged: (val) =>
                          setState(() => choiceChipsValue = val?.first),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: Color(0xFFC2E2F5),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Product Sans',
                                  color: Colors.white,
                                  useGoogleFonts: false,
                                ),
                        iconColor: Colors.black,
                        iconSize: 18,
                        elevation: 20,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Product Sans',
                                  color: Colors.black,
                                  useGoogleFonts: false,
                                ),
                        iconColor: Colors.black,
                        iconSize: 18,
                        elevation: 20,
                      ),
                      chipSpacing: 20,
                      multiselect: false,
                      alignment: WrapAlignment.start,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
