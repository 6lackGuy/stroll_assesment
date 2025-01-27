
import 'package:stroll_app/src/helpers/exports.dart';



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