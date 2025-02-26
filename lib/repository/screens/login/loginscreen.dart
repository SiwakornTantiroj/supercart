import 'package:flutter/material.dart';
import 'package:supercart/repository/screens/bottomnavbar/bottomnavscreen.dart';
import 'package:supercart/repository/widgets/uihelper.dart';
import 'package:supercart/repository/screens/bottomnavbar/home/homescreen.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Uihelper.customImage(img: "loginbg.png"),
            SizedBox(height: 15),
            Uihelper.customImage(img: "splash_button.png", width: 60),
            SizedBox(height: 15),
            Uihelper.customText(
              text: "Supercart app",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            SizedBox(height: 15),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 160,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Uihelper.customText(
                      text: "User",
                      color: const Color.fromARGB(255, 69, 74, 103),
                      fontweight: FontWeight.w500,
                      fontsize: 14,
                    ),
                    SizedBox(height: 5),
                    Uihelper.customText(
                      text: "084xxxxxxx",
                      color: const Color.fromARGB(255, 69, 74, 103),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 45,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottomnavscreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 198, 133, 3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Uihelper.customText(
                              text: "Login with your phone number",
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: "bold",
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(width: 115),
                    Uihelper.customText(
                      text: "Access your saved adrress automatically!",
                      color: const Color.fromARGB(255, 242, 169, 67),
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),
                    SizedBox(height: 5),
                    Uihelper.customText(
                      text: "Or login with email",
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontweight: FontWeight.w500,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
