part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({Key? key}) : super(key: key);

  final User? user;

  ProfilePage({this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            // Header
            Container(
              height: 232,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: defaultMargin),
              // padding: ,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Foto Profile
                  Container(
                    width: 110,
                    height: 110,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/photo_border.png'))),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage((context
                                      .read<UserCubit>()
                                      .state as UserLoaded)
                                  .user
                                  .picturePath!),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  // Nama
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                        defaultMargin, 16, defaultMargin, 6),
                    child: Text(
                      ((context.read<UserCubit>().state as UserLoaded)
                          .user
                          .name!),
                      style: blackFontStyle2,
                    ),
                  ),
                  // Email
                  Container(
                    child: Text(
                      (context.read<UserCubit>().state as UserLoaded)
                          .user
                          .email!,
                      style: greyFontStyle,
                    ),
                  )
                ],
              ),
            ),
            // Body
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabbar(
                    titles: ['Account', 'Food Market'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                      children: ((selectedIndex == 0)
                              ? [
                                  'Edit Profile',
                                  'Home Address',
                                  'Security',
                                  'Payment'
                                ]
                              : [
                                  'Rate App',
                                  'Help Center',
                                  'Privacy & Policy',
                                  'Term & Condition'
                                ])
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 16,
                                    right: defaultMargin,
                                    left: defaultMargin),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e,
                                      style: blackFontStyle3,
                                    ),
                                    SizedBox(
                                      width: defaultMargin,
                                      height: defaultMargin,
                                      child: Image.asset(
                                        'assets/right_arrow.png',
                                        fit: BoxFit.contain,
                                      ),
                                    )
                                  ],
                                ),
                              ))
                          .toList())
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
