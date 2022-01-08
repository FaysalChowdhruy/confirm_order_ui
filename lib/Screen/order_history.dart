import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          "Order History",
          style: TextStyle(color: Colors.black87, fontSize: 18),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                    child: Row(
                      children: const [
                        Text(
                          "Order Id",
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "6873871",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Cancelled",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text("Dec 9, 2021"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, bottom: 5),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: '৳0 ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(text: ' 1 Shipment'),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16.0, left: 16, right: 16),
                    child: Row(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.file_copy_outlined,
                              color: Color(0xff9B61E9),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff9B61E9),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: const [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Color(0xff9B61E9),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Reorder",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff9B61E9),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
