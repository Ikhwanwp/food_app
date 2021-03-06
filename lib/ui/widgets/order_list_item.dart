part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  final Transactions transactions;
  final double? itemWidth;

  OrderListItem({required this.transactions, this.itemWidth});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Foto Makanan
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(transactions.food!.picturePath!),
                  fit: BoxFit.cover)),
        ),
        // Nama Makanan
        SizedBox(
          width: itemWidth! - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactions.food!.name!,
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                  "${transactions.quantity} item(s) • " +
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id-ID',
                      ).format(transactions.total),
                  style: greyFontStyle.copyWith(fontSize: 13))
            ],
          ),
        ),

        // Status
        SizedBox(
          // 110 dari panjangnya rating
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // DateTime
              Text(
                convertDateTime(transactions.dateTime!).toString(),
                style: greyFontStyle.copyWith(fontSize: 12),
              ),
              // Status
              (transactions.status == TransactionStatus.cancelled)
                  ? Text('Cancelled',
                      style: GoogleFonts.poppins(
                          color: 'D9435E'.toColor(), fontSize: 10))
                  : (transactions.status == TransactionStatus.pending
                      ? Text('Pending',
                          style: GoogleFonts.poppins(
                              color: 'D9435E'.toColor(), fontSize: 10))
                      : (transactions.status == TransactionStatus.on_delivery)
                          ? Text('On Delivery',
                              style: GoogleFonts.poppins(
                                  color: '1ABC9C'.toColor(), fontSize: 10))
                          : SizedBox())
            ],
          ),
        )
      ],
    );
  }

  // Buat satu buah method yang akan mengembalikan string untuk mengkonvert dari tanggal (time) jadi yang diinginkan
  String? convertDateTime(DateTime dateTime) {
    String? month;

    switch (dateTime.month) {
      case 1:
        month = 'Jan';
        break;
      case 2:
        month = 'Feb';
        break;
      case 3:
        month = 'Mar';
        break;
      case 4:
        month = 'Apr';
        break;
      case 5:
        month = 'May';
        break;
      case 6:
        month = 'Jun';
        break;
      case 7:
        month = 'Jul';
        break;
      case 8:
        month = 'Aug';
        break;
      case 9:
        month = 'Sep';
        break;
      case 10:
        month = 'Oct';
        break;
      case 11:
        month = 'Nov';
        break;
      case 12:
        month = 'Des';
        break;
    }

    return month! + ' ${dateTime.day}, ${dateTime.hour}:${dateTime.minute}';
  }
}
