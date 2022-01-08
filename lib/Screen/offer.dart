import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Offers",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(
                        'https://chaldn.com/_mpimage/dekko-oyster-pasta-buy-2-get-1-offer-200-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D84596&q=low&v=1&m=400&webp=1',
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                                "https://chaldn.com/_mpimage/dekko-oyster-pasta-buy-2-get-1-free-200-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D87960&q=low&v=1&m=400&webp=1"),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dekko Oyster pasta(Buy 2 Get 1 Free)",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '৳ 70 ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      TextSpan(
                                          text: '| 200 gm',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: Colors.black)),
                                    ]
                                  )
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(Icons.flash_on,color: Colors.black26,),
                              SizedBox(height: 10,),
                              Container(
                                color: Color(0xffF5EDFF),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(Icons.add,color: Color(0xff9B61E9),),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 1,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(
                        'https://chaldn.com/_mpimage/dekko-horlicks-cookies-buy-2-get-1-free-725-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D92762&q=low&v=1&m=400&webp=1',
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                                "https://chaldn.com/_mpimage/dekko-horlicks-cookies-buy-2-get-1-free-725-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D83957&q=low&v=1&m=400&webp=1"),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dekko Horlicks Cookies(Buy 2 Get 1 Free)",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text: '৳ 120 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: '| 725 gm',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color: Colors.black)),
                                        ]
                                    )
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(Icons.flash_on,color: Colors.black26,),
                              SizedBox(height: 10,),
                              Container(
                                color: Color(0xffF5EDFF),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(Icons.add,color: Color(0xff9B61E9),),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
