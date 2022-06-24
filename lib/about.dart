import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({ Key? key }) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  myMedsos(icon){
    return IconButton(
                          onPressed: () {}, 
                          icon: Icon(icon,
                          color: Colors.white,
                          )
                        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent])
                    .createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height)
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/ikhwan.png', 
                    height: 400, 
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
                child: Column(
                  children: [
                    Text(
                      'Hello I am', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:  30,
                    )),
                    SizedBox(
                      height: 10
                    ),
                    Text(
                      'M Ikhwan Fathulloh', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:  40,
                        fontWeight: FontWeight.bold
                    )),
                    SizedBox(
                      height: 2
                    ),
                    Text(
                      'Backend Developer', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:  20,
                    )),
                    SizedBox(
                      width: 120,
                      child: TextButton(
                        onPressed: () {}, 
                        child: Text('Hire Me'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          primary: Colors.black
                          ), 
                        ),  
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        myMedsos(FontAwesomeIcons.instagram),
                        myMedsos(FontAwesomeIcons.linkedin),
                        myMedsos(FontAwesomeIcons.github),
                        myMedsos(FontAwesomeIcons.twitter),
                        myMedsos(FontAwesomeIcons.facebook),
                      ],
                    )
                    
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}