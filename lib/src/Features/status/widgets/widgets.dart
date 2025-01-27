import 'package:stroll_app/src/helpers/exports.dart';

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
    int selectedIndex = 1;
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
