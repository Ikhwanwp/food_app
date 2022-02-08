part of 'shared.dart';

Color mainColor = "FF5C00".toColor();
Color greyColor = "8D92A3".toColor();

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);
TextStyle blackFontStyle4 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle orangeFontStyle = GoogleFonts.poppins().copyWith(color: mainColor);

const double defaultMargin = 24;
