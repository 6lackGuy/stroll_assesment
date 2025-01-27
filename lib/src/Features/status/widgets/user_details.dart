import 'package:stroll_app/src/helpers/exports.dart';


class UserDetailsUi extends StatelessWidget {
  const UserDetailsUi({
    required this.image,
    required this.name,
    required this.age,
    required this.question,
    super.key,
  });

  final String image;
  final String name;
  final String age;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60).h,
      child: SizedBox(
        height: 90.h,
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(7).r,
              decoration: BoxDecoration(
                color: black3E,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: CircleAvatar(
                radius: 25.r,
                backgroundImage: AssetImage(image),
              ),
            ),
            Positioned(
              top: 11.r,
              left: 57.r,
              child: Container(
                padding: EdgeInsets.all(2).r,
                decoration: BoxDecoration(
                  color: black3E,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                          top: 3, bottom: 3, right: 10, left: 10)
                      .r,
                  child: Text(
                    "$name, $age",
                    style: AppTextStyle.proxima.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 45.r,
              right: 10,
              child: Text(
                question,
                style: AppTextStyle.proxima.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}