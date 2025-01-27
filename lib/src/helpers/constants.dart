import 'package:stroll_app/src/helpers/exports.dart';

const black3E = Color(0xFF121517);
const preference = Color(0xFFCBC9FF);
const cardcolor = Color(0xFF232A2E);
const purple = Color(0xFF8B88EF);
const bonfire = Color(0xFFCCC8FF);
const grey128 = Color.fromARGB(255, 128, 128, 128);


const kStatusGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0x0C44474E), // 0.05 opacity converted to hex
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ],
);

const kStatusContainer = BoxDecoration(
  color: Colors.black,
  gradient: kStatusGradient,
);
