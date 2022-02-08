part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You've Made Order",
        subTitle: "Just stay at home while we are\npreparing your best foods",
        picturePath: 'assets/bike.png',
        buttonTitle1: 'Order other Foods',
        buttonTap1: () {
          Get.offAll(MainPage());
        },
        buttonTap2: () {
          Get.off(MainPage(
            initialPage: 1,
          ));
        },
        buttonTitle2: 'View My Order',
      ),
    );
  }
}
