import 'package:flutter/material.dart';

Widget dot()
{
  return Center(
    child: Container(
      height: 25,
      width: 25,
      
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
    ),
  );
}

Widget empty()
{
  return Container();
}