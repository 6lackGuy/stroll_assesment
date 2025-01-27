import 'package:stroll_app/src/helpers/exports.dart';



class InfoUi extends StatelessWidget {
  const InfoUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0.h,
        child: Container(
          height: 130.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.transparent,
                // Color(0xfff0be7b),
                // Color(0xffaaa39a),
                Colors.grey,
              ],
            ),
          ),
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              Container(
                height: 60.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Stroll Bonfire",
                    style: AppTextStyle.proximaBold.copyWith(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w700,
                      color: bonfire,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: preference,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIcons.timer(PhosphorIconsStyle.regular),
                    color: Colors.white,
                    size: 17.r,
                  ),
                  Text(
                    "22h 00m",
                    style: AppTextStyle.proxima.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    ImagePath.user,
                    height: 20.h,
                    width: 20.w,
                    color: Colors.white,
                  ),
                  Text(
                    "103",
                    style: AppTextStyle.proxima.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}