// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:signin_flutter_ui/configuration.dart';
// import 'package:signin_flutter_ui/sign_up.dart';

// import 'Animation/FadeAnimation.dart';

// class SignIn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(

//       child: Scaffold(

//         appBar: AppBar(
//           backgroundColor: Colors.black87,

//             leading: IconButton(
//               icon: new Icon(Icons.arrow_back, color: Color(0xffF3C179)),
//             onPressed: () => Navigator.of(context).pop(),
//             ),



//           ),

//         // resizeToAvoidBottomPadding: false,

//         body: FadeAnimation(1.6,Container(

//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             // color: Color(0xFF191720),
//             color: Colors.black87
//           ),

//           child:Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [


//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[

//                   SizedBox(height: 60),


//                   RichText(text: TextSpan(
//                       children: [

//                         TextSpan(text:"Let's Sign you in\n\n",style:TextStyle(
//                           fontSize: getProportionateScreenWidth(30),
//                           // color: Color(0xFFF27E63),
//                           color: Color(0xffF3C179),
//                           // color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ), ),


//                         TextSpan(text:"Welcome back.\nYou've been missed",style:TextStyle(
//                           fontSize: getProportionateScreenWidth(25),
//                           color: Colors.grey,
//                           // color: Color(0xff3C8590),
//                           // color: Color(0xFF3b3a42),
//                           fontWeight: FontWeight.bold,
//                         ), ),


//                       ]
//                   )),


//                   SizedBox(height: 40),


//                   FadeAnimation(1.4, Container(

//                     width: 330,

//                     child: Column(
//                       children: <Widget>[

//                         Container(
//                           height: 45,
//                           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                               border: Border(bottom: BorderSide(color: Colors.grey[850]),
//                               top: BorderSide(color: Colors.grey[850]),
//                               right: BorderSide(color: Colors.grey[850]),
//                               left: BorderSide(color: Colors.grey[850]))
//                           ),
//                           child: TextField(
//                             style: TextStyle(
//                               color: Colors.white
//                             ),
//                             decoration: InputDecoration(
//                                 hintText: "Email or Phone number",
//                                 hintStyle: TextStyle(color: Colors.grey[600]),
//                                 border: InputBorder.none
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 20,),

//                         Container(
//                           height: 45,
//                           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border(bottom: BorderSide(color: Colors.grey[850]),
//                                   top: BorderSide(color: Colors.grey[850]),
//                                   right: BorderSide(color: Colors.grey[850]),
//                                   left: BorderSide(color: Colors.grey[850]))
//                           ),
//                           child: TextField(
//                             obscureText: true,
//                             style: TextStyle(
//                                 color: Colors.white
//                             ),
//                             decoration: InputDecoration(
//                                 hintText: "Password",
//                                 hintStyle: TextStyle(color: Colors.grey[600]),
//                                 border: InputBorder.none
//                             ),
//                           ),
//                         ),

//                       ],
//                     ),

//                   )),


//                   SizedBox(height: 20),




//                   SizedBox(height: 80),

//                   RichText(text: TextSpan(
//                       children: [

//                         TextSpan(text:"Don't have an account ? ",style:TextStyle(
//                           fontSize: getProportionateScreenWidth(15),

//                           color: Colors.grey,
//                           fontWeight: FontWeight.bold,
//                         ), ),

//                         TextSpan(text:"Register",style:TextStyle(
//                           fontSize: getProportionateScreenWidth(15),
//                           color: Color(0xffF3C179),
//                           fontWeight: FontWeight.bold,
//                         ),
//                           recognizer: TapGestureRecognizer()..onTap = () {
//                             Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
//                             // single tapped
//                           },
//                         ),


//                       ]
//                   )),



//                   SizedBox(height: 20),


//                   FadeAnimation(1.6, Container(
//                     height: 50,
//                     width: 330,
//                     // margin: EdgeInsets.symmetric(horizontal: 50),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         // color: Color(0xFF4e71ba)
//                         color: Colors.white
//                     ),
//                     child: Center(
//                       child: Text("Login", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),),
//                     ),
//                   )),


//                 ],
//               ),

//             ],
//           )


//         ),)

//       ),
//     );
//   }
// }
