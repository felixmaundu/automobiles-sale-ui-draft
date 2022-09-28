import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/widgets/VerifiedSellerWidget.dart';

class CarMiniDetailWidget extends StatelessWidget {
  final String carName;
  final int maxLine;
  final String usedOrNot;
  final String yearModel;
  final String price;
  final String locationName;

  const CarMiniDetailWidget(
      {Key? key,
      required this.carName,
      required this.maxLine,
      required this.usedOrNot,
      required this.yearModel,
      required this.price,
      required this.locationName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Text(
                  carName.toUpperCase(),
                  maxLines: maxLine,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                      // color: Colors.black.withOpacity(0.6)
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  price,
                  maxLines: maxLine,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                      // color: Colors.black.withOpacity(0.6)
                      ),
                ),
                Text(
                  'year Model:$yearModel',
                  maxLines: maxLine,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                      // color: Colors.black.withOpacity(0.6)
                      ),
                ),
                Container(
                  height: 20,
                  width: 100,
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(usedOrNot,
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400, //roboto
                        )),
                  ),
                ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(5),

                //   child: Text(
                //     usedOrNot,
                //     maxLines: maxLine,
                //     overflow: TextOverflow.ellipsis,
                //     style: GoogleFonts.openSans(
                //       backgroundColor: Colors.orange,

                //         // color: Colors.black.withOpacity(0.6)
                //         ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.location_on_outlined),
                    ),
                    Text(
                      locationName,
                      maxLines: maxLine,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.openSans(
                          // color: Colors.black.withOpacity(0.6)
                          ),
                    ),
                  ],
                ),
                VerifiedSellerWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
