import 'package:dice/dot.dart';
import 'package:flutter/material.dart';

class Conttainer extends StatefulWidget {
  final int rno;
  final double scale;
  const Conttainer({super.key,required this.rno,required this.scale});

  @override
  State<Conttainer> createState() => _ConttainerState();
}

class _ConttainerState extends State<Conttainer> {
  
  
  List<Widget>findDicePhase(int no)
  {

     switch(no){
    case 1:  
    return(
      [
        empty(),empty(),empty(),
        empty(),dot(),empty(),
        empty(),empty(),empty(),
      ]
    );
     case 2:  
    return(
      [
        dot(),empty(),empty(),
        empty(),empty(),empty(),
        empty(),empty(),dot(),
      ]
    );
     case 3:  
    return(
      [
        empty(),empty(),dot(),
        empty(),dot(),empty(),
        dot(),empty(),empty(),
      ]
    );
     case 4:  
    return(
      [
        dot(),empty(),dot(),
        empty(),empty(),empty(),
        dot(),empty(),dot(),
      ]
    );

     case 5:  
    return(
      [
        dot(),empty(),dot(),
        empty(),dot(),empty(),
        dot(),empty(),dot(),
      ]
    );
     case 6:  
    return(
      [
        dot(),empty(),dot(),
        dot(),empty(),dot(),
        dot(),empty(),dot(),
      ]
    );


    default:
      return(
        [
          empty(),empty(),empty(),
          empty(),empty(),empty(),
          empty(),empty(),empty(),
        ]
      );

    }
  }

  

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: widget.scale,
      duration: Duration(microseconds: 1000),
      curve: Curves.decelerate,
      child: Container(
         alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                           // border: Border.all(color: Colors.white, width: 2),
                           gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFFFBABA), // soft pinkish-white
                              Color(0xFFFF3D3D), // vibrant red
                              Color(0xFF7B0000), 
                              
                              ],
                            ),
                          ),
                          height: 150,
                          width: 150,
          
                          child:Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GridView.count(
                              crossAxisCount: 3,
                              physics: NeverScrollableScrollPhysics(),
                              children:  findDicePhase(widget.rno)
                            ),
                          )
      ),
    );
  }
}