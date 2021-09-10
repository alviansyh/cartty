import '/widgets/header.dart';
import '/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cartty());
}

class Cartty extends StatefulWidget {
  const Cartty({Key? key}) : super(key: key);

  @override
  State<Cartty> createState() => _CarttyState();
}

class _CarttyState extends State<Cartty> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String plan, String desc, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index ? azureBluetColor : indBluetColor,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  selectedIndex == index
                      ? Icon(
                          Icons.radio_button_on_outlined,
                          color: azureBluetColor,
                        )
                      : Icon(
                          Icons.circle_outlined,
                          color: indBluetColor,
                        ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plan,
                        style: planTextStyle,
                      ),
                      Text(
                        desc,
                        style: descTextStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    price,
                    style: priceTextStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget checkoutButton() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: 321,
            decoration: BoxDecoration(
              color: azureBluetColor,
              borderRadius: BorderRadius.circular(75),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: buttonTextStyle,
              ),
            ),
          )
        ],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: oxfordBluetColor,
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: ListView(
            children: [
              Header(),
              option(0, 'Monthly', 'Good for starting up', '\$20'),
              option(1, 'Quarterly', 'Focusing on building', '\$55'),
              option(2, 'Yearly', 'Steady company', '\$220'),
              checkoutButton(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
