import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black87, fontSize: 18),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 16,),
              const Center(
                  child: Icon(
                Icons.account_circle,
                size: 100,
                    color: Color(0xff9B61E9),
              )),
              const Center(
                child: Text(
                  "Faysal Chowdhury",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.account_circle_outlined,
                        size: 25, color: Color(0xff9B61E9)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Personal Information",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.home_outlined,
                      color: Color(0xff9B61E9),
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Manage Address",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.history_outlined,
                        size: 25,
                        color: Color(0xff9B61E9),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Order History",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.payment_outlined,
                      color: Color(0xff9B61E9),
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Payment History",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings_outlined,
                      color: Color(0xff9B61E9),
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 16,
              left: 16,
              child: Row(
                children: const [
                  Icon(
                    Icons.logout,
                    color: Color(0xff9B61E9),
                  ),
                  SizedBox(width: 16,),
                  Text("Logout",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500),)
                ],
              ))
        ],
      ),
    );
  }
}
