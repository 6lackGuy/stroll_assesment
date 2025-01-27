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