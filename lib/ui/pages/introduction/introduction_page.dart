import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> offset;
  int _infoStep = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this)
      ..forward();

    offset = Tween<Offset>(begin: const Offset(-0.2, 0.0), end: Offset.zero)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.auth),
                  child: Text(
                    'skip'.tr,
                    style: const TextStyle(letterSpacing: 0.27),
                  ),
                )),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: Get.width * 0.75,
                height: Get.width * 0.75,
                decoration: const BoxDecoration(
                  color: AppTheme.lightSilverColor,
                  shape: BoxShape.circle,
                ),
                child: SlideTransition(
                  position: offset,
                  textDirection: TextDirection.rtl,
                  child: Image.asset(
                    'assets/images/intro$_infoStep.png',
                    scale: 2.1,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'intro${_infoStep}_title'.tr,
                    style: AppTheme.title.copyWith(fontSize: 16.0),
                  ),
                ),
                Text('intro${_infoStep}_info'.tr + '\n',
                    maxLines: 2,
                    style:
                        AppTheme.title.copyWith(fontWeight: FontWeight.w700)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: _infoStep,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    dotColor: AppTheme.lightSilverColor,
                    activeDotColor: AppTheme.primaryColor,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                  ),
                  // onDotClicked: (index) => setState(() {
                  //   _infoStep = index;
                  // }),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: RoundedButton(
                    text: _infoStep == 3 ? 'get_started'.tr : 'next'.tr,
                    width: _infoStep == 3 ? 155.0 : 110.0,
                    trailingIcon: Icons.arrow_forward,
                    onPressed: () {
                      // Todo: change step
                      if (_infoStep < 3) {
                        setState(() {
                          _infoStep++;
                        });
                        _animationController.forward(from: 0);
                      } else {
                        Get.toNamed(Routes.auth);
                      }
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
