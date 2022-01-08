import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/Screen/confirmDeliveryAddress.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  bool isTrue = false;
  bool deliveryArrow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          "Confirm Order",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                color: Colors.white,
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    backgroundColor: Colors.white,
                    collapsedBackgroundColor: Colors.white,
                    onExpansionChanged: (value) => setState(() {
                      value == true ? isTrue = value : isTrue = value;
                    }),
                    trailing: const SizedBox.shrink(),
                    tilePadding: const EdgeInsets.all(0),
                    title: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          isTrue == false
                              ? const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xff9B61E9),
                                  size: 30,
                                )
                              : const Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Color(0xff9B61E9),
                                  size: 30,
                                ),
                          const Text(
                            "5% discount with code APP applied",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    children: [
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "Enter Special Code",
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 10.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xff7432CA)),
                                  child: const Text(
                                    "Apply",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AbsorbPointer(
                absorbing: deliveryArrow == true ? true : false,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: deliveryArrow == true
                          ? Colors.black.withOpacity(0.1)
                          : Colors.white),
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Taltola colony akhota complex"),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Agargaon, Dhaka",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "01951043844",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 45,
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const ConfirmDeliveryAddress()));
                          },
                          child: const Text(
                            'Change',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: deliveryArrow == true
                                  ? Colors.grey.withOpacity(0.1)
                                  : Colors.white,
                              side: const BorderSide(
                                  color: Colors.deepPurple, width: 2)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        if (value == true) {
                          deliveryArrow = value;
                        } else {
                          deliveryArrow = value;
                        }
                      });
                    },
                    trailing: const SizedBox.shrink(),
                    title: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        padding: const EdgeInsets.only(
                            left: 30, top: 25, bottom: 25),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.access_time_filled_sharp,
                                  color: Color(0xff1E4155),
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Preferred Delivery Timings",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff1E4155),
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, spreadRadius: 1),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.hourglass_bottom_outlined,
                                          color: Colors.grey,
                                        ),
                                        const Text(
                                          "Express",
                                          style: TextStyle(
                                              color: Color(0xff1E876D),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const Spacer(),
                                        deliveryArrow == false
                                            ? const Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Color(0xff9B61E9),
                                                size: 30,
                                              )
                                            : const Icon(
                                                Icons.keyboard_arrow_up,
                                                color: Color(0xff9B61E9),
                                                size: 30,
                                              ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Tue,Jan 4",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "2:00 PM - 3.00 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                )),
                          ],
                        )),
                    children: [
                      Container(
                        height: 250,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: CupertinoDatePicker(
                                  initialDateTime: DateTime.now(),
                                  onDateTimeChanged: (val) {
                                    setState(() {});
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white),
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, spreadRadius: 1),
                    ],
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Add reusalbe bags?"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Text(
              //       "By tapping proceed, I agree to Sookh",
              //       style: TextStyle(color: Colors.black54, fontSize: 10),
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Text(
              //       "Terms and Conditions",
              //       style: TextStyle(color: Color(0xff7432CA), fontSize: 10),
              //     ),
              //   ],
              // ),
              // Container(
              //   decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(20)),
              //       color: Color(0xff9A62E9)),
              //   margin: const EdgeInsets.all(16),
              //   padding: const EdgeInsets.all(12),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Icon(
              //         Icons.shopping_cart,
              //         color: Colors.white,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "Proceed",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20),
              //       ),
              //       Container(
              //           padding:
              //               const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              //           decoration: const BoxDecoration(
              //               borderRadius: BorderRadius.all(Radius.circular(10)),
              //               color: Color(0xff7432CA)),
              //           child: const Text(
              //             "৳1522",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 16,
              //                 fontWeight: FontWeight.bold),
              //           ))
              //     ],
              //   ),
              // )
            ],
          ),
          Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "By tapping proceed, I agree to Sookh",
                        style: TextStyle(color: Colors.black54, fontSize: 10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Terms and Conditions",
                        style:
                            TextStyle(color: Color(0xff7432CA), fontSize: 10),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff9A62E9)),
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Proceed",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 8),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xff7432CA)),
                            child: const Text(
                              "৳1522",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
