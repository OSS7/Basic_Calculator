import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/providers/provider_data.dart';

enum ButtonType { operator, number, delete, equal }

class CalculateItem extends StatefulWidget {
  final String? txt;
  final ButtonType? type;
  const CalculateItem({Key? key, this.txt, this.type = ButtonType.number})
      : super(key: key);

  @override
  State<CalculateItem> createState() => _CalculateItemState();
}

class _CalculateItemState extends State<CalculateItem> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: true);
    final size = MediaQuery.of(context).size;

    return TextButton(
      onPressed: () {
        setState(() {
          if (widget.type == ButtonType.operator) {
            provider.operatorIs(widget.txt.toString());
            provider.isOperatorClicked();
          }

          if (widget.type == ButtonType.delete) {
            provider.delete();
          }

          if (widget.type == ButtonType.number) {
            if (provider.operatorClicked == true) {
              provider.addToInput2(widget.txt.toString());
              provider.equalPressed();
            }
            if (provider.operatorClicked == false) {
              provider.addToInput1(widget.txt.toString());
              provider.equalPressed();
            }
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        width: widget.type == ButtonType.number
            ? size.width * 0.18
            : size.width * 0.12,
        height: widget.type == ButtonType.number
            ? size.height * 0.09
            : size.height * 0.06,
        child: Center(
          child: Text(
            '${widget.txt}',
            style: const TextStyle(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
