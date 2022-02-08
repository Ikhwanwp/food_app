part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final String picturePath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final void Function() buttonTap1;
  //atau bisa disingkat menjadi -> final VoidCallback buttonTap1
  final void Function()? buttonTap2;

  IllustrationPage(
      {required this.title,
      required this.subTitle,
      required this.picturePath,
      required this.buttonTitle1,
      this.buttonTitle2,
      required this.buttonTap1,
      this.buttonTap2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(picturePath))),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(fontSize: 20),
          ),
          Text(
            subTitle,
            style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 12),
            width: 200,
            height: 45,
            child: TextButton(
              onPressed: buttonTap1,
              style: TextButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: mainColor),
              child: Text(
                buttonTitle1,
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          (buttonTap2 == null)
              ? SizedBox()
              : SizedBox(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    onPressed: buttonTap2,
                    style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: '8D92A3'.toColor()),
                    child: Text(
                      buttonTitle2 ?? 'title',
                      style: blackFontStyle3.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
