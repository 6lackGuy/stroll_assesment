import 'package:stroll_app/src/helpers/exports.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int indexx = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: black3E,
      elevation: 0,
      currentIndex: indexx,
      // selectedItemColor: Theme.of(context).primaryColor,
      // unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      onTap: (index) {
        setState(() {
          indexx = index;
        });

        // Add navigation logic here based on index
        switch (index) {
          case 0:
            // Handle Home tap
            break;
          case 1:
            // Handle Search tap
            break;
          case 2:
            // Handle Bookings tap
            break;
          case 3:
            // Handle Notifications tap
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            ImagePath.cards,
            height: 40.h,
            width: 40.w,
            color: indexx == 0 ? purple : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            ImagePath.bonfire,
            height: 40.h,
            width: 40.w,
            color: indexx == 1 ? purple : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            ImagePath.chat,
            height: 40.h,
            width: 40.w,
            color: indexx == 2 ? purple : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            ImagePath.user,
            height: 40.h,
            width: 40.w,
            color: indexx == 3 ? purple : Colors.grey,
          ),
          label: '',
        ),
      ],
    );
  }
}
