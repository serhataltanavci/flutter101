import 'package:flutter/material.dart';
import 'package:flutter101/styled_body_text.dart';
import 'package:flutter101/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int sugarStrengh = 1;
  int coffeStrengh = 1;


void increaseStrengh (){
  setState(() {
    coffeStrengh = coffeStrengh<5 ? coffeStrengh+1 : 1;
  });
}

void increaseSugars (){
  setState(() {
    sugarStrengh = sugarStrengh<5? sugarStrengh+1:0;
  });
}

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
          const StyledBodyText("Strengh: "),
          for (int i = 0;i<coffeStrengh; i++)
              Image.asset('assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
              ),
          

          const Expanded(child:  SizedBox()),
          StyledButton(
            onPressed: increaseStrengh, 
            child: const Text("+"))
          ], ),
         const SizedBox(height: 20,),
        Row(
          children: [
          const StyledBodyText("Sugars: "),
          if (sugarStrengh == 0 ) const Text("🚫🔥"),
         for (int i=0;  i<sugarStrengh; i++) 
            Image.asset('assets/img/sugar_cube.png', width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,),
          
          const Expanded(child:  SizedBox()),
          StyledButton
            (onPressed: increaseSugars, 
            child: const Text("+"))
          // TextButton(
          //   style: TextButton.styleFrom(
          //     foregroundColor: Colors.brown
          //   ),
          //   onPressed: increaseSugars, child: const Text("+"))

          ],),
      ],
    );
  }
}