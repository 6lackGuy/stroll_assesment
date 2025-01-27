import 'package:stroll_app/src/helpers/exports.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -150.h,
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.background),
            fit: BoxFit.fitWidth,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black,
            ],
          ),
        ),
      ),
    );
  }
}

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

class Cards extends StatelessWidget {
  const Cards({
    required this.selectedIndex,
    required this.statusVm,
    required this.index,
    required this.onTap,
    super.key,
  });

  final StatusVm statusVm;
  final int index;
  final int? selectedIndex;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 151.w,
        decoration: BoxDecoration(
          color: cardcolor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: selectedIndex == index ? purple : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: selectedIndex == index ? purple : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: selectedIndex == index ? purple : Colors.white,
                      width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    statusVm.options[index].alphabet,
                    style: AppTextStyle.proxima.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.r,
              ),
              Text(
                statusVm.options[index].option,
                style: AppTextStyle.proxima.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionCards extends StatefulWidget {
  const OptionCards({
    super.key,
    required this.statusVm,
  });

  final StatusVm statusVm;

  @override
  State<OptionCards> createState() => _OptionCardsState();
}

class _OptionCardsState extends State<OptionCards> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = -1;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cards(
              statusVm: widget.statusVm,
              index: 0,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            Cards(
              statusVm: widget.statusVm,
              index: 1,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cards(
              statusVm: widget.statusVm,
              index: 2,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            Cards(
              statusVm: widget.statusVm,
              index: 3,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class RecordAudioButton extends StatelessWidget {
  const RecordAudioButton({
    required this.statusVm,
    super.key,
  });

  final StatusVm statusVm;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: purple,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            ImagePath.mic,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}

class SendAudioButton extends StatelessWidget {
  const SendAudioButton({
    required this.statusVm,
    super.key,
  });

  final StatusVm statusVm;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_rounded,
          color: black3E,
          size: 28.r,
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.statusVm,
  });

  final StatusVm statusVm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0).h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Pick your option.\nSee who has a similar mind",
            style: AppTextStyle.proxima.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Row(
            spacing: 10.r,
            children: [
              RecordAudioButton(
                statusVm: statusVm,
              ),
              SendAudioButton(
                statusVm: statusVm,
              ),
            ],
          )
        ],
      ),
    );
  }
}
