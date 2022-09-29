import 'package:calculator/constant.dart';
import 'package:calculator/widgets/calculate_item.dart';
import 'package:flutter/material.dart';

class HomePageBottomSection extends StatelessWidget {
  const HomePageBottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              colors: [primaryClr, secondaryClr],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        width: size.width,
        height: size.height * 0.55,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CalculateItem(
                    txt: '7',
                  ),
                  CalculateItem(
                    txt: '4',
                  ),
                  CalculateItem(
                    txt: '1',
                  ),
                  CalculateItem(
                    txt: 'C',
                    type: ButtonType.delete,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CalculateItem(
                    txt: '8',
                  ),
                  CalculateItem(
                    txt: '5',
                  ),
                  CalculateItem(
                    txt: '2',
                  ),
                  CalculateItem(
                    txt: '0',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CalculateItem(
                    txt: '9',
                  ),
                  CalculateItem(
                    txt: '6',
                  ),
                  CalculateItem(
                    txt: '3',
                  ),
                  CalculateItem(
                    txt: '.',
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [Colors.orange.withOpacity(0.5), Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CalculateItem(
                      txt: 'x',
                      type: ButtonType.operator,
                    ),
                    CalculateItem(
                      txt: '/',
                      type: ButtonType.operator,
                    ),
                    CalculateItem(
                      txt: '-',
                      type: ButtonType.operator,
                    ),
                    CalculateItem(
                      txt: '+',
                      type: ButtonType.operator,
                    ),
                    CalculateItem(
                      txt: '=',
                      type: ButtonType.equal,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
