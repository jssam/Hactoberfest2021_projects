import 'package:flutter/material.dart';
import 'package:chaitanya/widgets/maincard.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:
      const MainCard(),
    );
       
  
  }
}