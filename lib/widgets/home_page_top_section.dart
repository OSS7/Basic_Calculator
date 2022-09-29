import 'package:calculator/constant.dart';
import 'package:calculator/providers/provider_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageTopSection extends StatelessWidget {
  const HomePageTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: true);
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            colors: [primaryClr, secondaryClr],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        height: size.height * 0.5,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '${provider.userInput1} \n  ',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '${provider.oparetor}\n  ',
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                )),
            Text(
              '${provider.userInput2} \n',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              '${provider.answer.toStringAsFixed(1)} =  \n',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 35, color: Colors.white24),
            ),
          ],
        ),
      ),
    );
  }
}
