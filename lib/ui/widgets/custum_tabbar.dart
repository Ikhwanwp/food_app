part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String>? titles;
  final Function(int)? onTap;

  // Title di wajibkan dan harus diisi maka gunakan required
  // ignore: use_key_in_widget_constructors
  const CustomTabbar({required this.selectedIndex, this.titles, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      // Stack Terdiri dari title, garis abu-abu, dan garis hitam
      // Garis hitam mengikuti index yang dipilih
      child: Stack(
        children: [
          // Buat garis abu
          Container(
            margin: const EdgeInsets.only(top: 48),
            height: 1,
            color: "F2F2F2".toColor(),
          ),
          // Title
          Row(
            children: titles!
                .map((e) => Padding(
                      padding: const EdgeInsets.only(left: defaultMargin),

                      // Antara text dan garis hitam
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap!(titles!.indexOf(e));
                              }
                            },
                            child: Text(e,
                                style: (titles?.indexOf(e) == selectedIndex)
                                    ? orangeFontStyle.copyWith(
                                        fontWeight: FontWeight.w500)
                                    : greyFontStyle),
                          ),
                          // Garis Hitam
                          Container(
                            width: 40,
                            height: 3,
                            margin: const EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (titles?.indexOf(e) == selectedIndex)
                                    ? "FF5C00".toColor()
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
          // Garis Hitam yang mengikuti ketika index dipilih
        ],
      ),
    );
  }
}
