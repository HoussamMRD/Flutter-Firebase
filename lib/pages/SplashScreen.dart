import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  final Widget child;
  final int seconds;
  final Widget navigateAfterSeconds;

  const SplashScreen({
    Key? key,
    required this.child,
    required this.seconds,
    required this.navigateAfterSeconds,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: widget.seconds),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.navigateAfterSeconds),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Image.asset("assets/images/splash.png",
         height: 300,
         ),
         Container(
          margin: EdgeInsets.only(top: 50),
          child: Text("Todo App",
           style: TextStyle(
            color: Color.fromARGB(255, 0, 57, 163),
            fontSize: 35,
            fontWeight: FontWeight.bold,
           ), 
         ),
         ),
         // SizedBox()
         InkWell(
          onTap: (){
            //pushreplacednamed so it can not goes back to splesh screen 
            Navigator.pushReplacementNamed(context, "/singUp");
          },
           //for animation on container
          child: Ink( 

            padding: EdgeInsets.symmetric(horizontal:80,vertical:16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 26, 16, 216),
            ),
            child:Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
             ),
            
          ),
        
         ),
         ],
          ),
      ),

    );
  }
}