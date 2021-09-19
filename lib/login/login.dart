import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpageui/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Coloors.purple,
          ),
          Container(
            width: context.screenWidth,
            height: context.percentHeight * 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
            ),
            child: VStack(
              [
                SvgPicture.asset(
                  "assets/vaccum.svg",
                  fit: BoxFit.cover,
                ).pOnly(bottom: 32, top: 60),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloors.organe,
                        width: 1.5,
                      ),
                    ),
                    labelText: "Emai",
                    hintText: "abc@gmail.com",
                    prefixIcon: Icon(Icons.mail),
                    contentPadding: Vx.m4,
                  ),
                ).p16(),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloors.organe,
                        width: 1.5,
                      ),
                    ),
                    labelText: "Email Password",
                    hintText: "Enter your password",
                    contentPadding: Vx.m4,
                    prefixIcon: Icon(Icons.privacy_tip),
                  ),
                ).p16(),
                "Forgot Password?".text.make().objectCenterRight().p12(),
                RaisedButton(
                  onPressed: () {},
                  child: "Log In".text.bold.make(),
                  color: Colors.orange,
                  textColor: Colors.white,
                ).wh(context.screenWidth, 48).p12(),
              ],
            ),
          ),
          Positioned(
              child: VStack(
          [
            HStack(
              [
                SvgPicture.asset("assets/fb.svg"),
                9.widthBox,
                SvgPicture.asset("assets/google.svg"),
                9.widthBox,
                SvgPicture.asset("assets/twitter.svg"),
              ],
              alignment: MainAxisAlignment.center,
            ).wFull(context),
            7.heightBox,
            "Dont have account ".richText.white.center.withTextSpanChildren([
            "Sign Up here..".textSpan.color(Coloors.organe).make(),
           
          ]).makeCentered(),
          ],
           alignment: MainAxisAlignment.center,
           crossAlignment: CrossAxisAlignment.center,
          ),
          bottom: 28,
          ),
        ],
      ),
    );
  }
}
