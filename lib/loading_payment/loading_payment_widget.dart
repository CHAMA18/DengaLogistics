import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPaymentWidget extends StatefulWidget {
  const LoadingPaymentWidget({Key? key}) : super(key: key);

  @override
  _LoadingPaymentWidgetState createState() => _LoadingPaymentWidgetState();
}

class _LoadingPaymentWidgetState extends State<LoadingPaymentWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 500,
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
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));

      context.pushNamed('PaymentMethod');
    });

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
            Stack(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.5,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.asset(
                                    'assets/images/57641-mxlog-deliver-box.gif',
                                  ).image,
                                ),
                              ),
                              child: Text(
                                'Hello World',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The delivery is ready!',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Product Sans',
                            color: Color(0xB7090000),
                            fontSize: 28,
                            useGoogleFonts: false,
                          ),
                    ).animated([animationsMap['textOnPageLoadAnimation']!]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
