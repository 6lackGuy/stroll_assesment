
import 'package:stroll_app/src/helpers/exports.dart';

class StatusUi extends StatelessWidget {
  const StatusUi({super.key});

  @override
  Widget build(BuildContext context) {
    final statusVm = StatusVm();
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            //Background Image
            BackgroundImage(),
            // Timer and Info
            InfoUi(),
            Positioned(
              bottom: 0,
              child: Container(
                height: 420.h,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(15).r,
                decoration: kStatusContainer,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //User Details and Question
                      UserDetailsUi(
                        image: ImagePath.image,
                        name: "Angelina",
                        age: "28",
                        question: "What is your favorite time\nof the day?",
                      ),
                      //User Preference
                      Center(
                        child: Text(
                          "“Mine is definitely the peace in the morning.”",
                          style: AppTextStyle.proximaItalic.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w100,
                            color: preference,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      //Options
                      OptionCards(
                        statusVm: statusVm,
                      ),
                      // Record Audio and send Buttons
                      Buttons(
                        statusVm: statusVm,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 67.h, // Adjust this value to your desired height
        child: CustomBottomNavigationBar(),
      ),
    );
  }
}
