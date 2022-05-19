import 'package:authentification_test/model/shipping.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payment method'),
        ),
        body: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Column(children: [
                  CreditCardWidget(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    showBackView: isCvvFocused,
                    onCreditCardWidgetChange:
                        (CreditCardBrand onCreditCardModelChange) {},
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: CreditCardForm(
                      onCreditCardModelChange: onCreditCardModelChange,
                      cardHolderName: cardHolderName,
                      cardNumber: cardNumber,
                      cvvCode: cvvCode,
                      formKey: formKey,
                      expiryDate: expiryDate,
                      themeColor: Colors.blue,
                      textColor: Colors.black,
                      cardNumberDecoration: InputDecoration(
                        labelText: 'Number',
                        hintText: 'XXXX XXXX XXXX XXXX',
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelStyle: const TextStyle(color: Colors.blue),
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      expiryDateDecoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelStyle: const TextStyle(color: Colors.blue),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: 'Expired Date',
                        hintText: 'XX/XX',
                      ),
                      cvvCodeDecoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelStyle: const TextStyle(color: Colors.blue),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: 'CVV',
                        hintText: 'XXX',
                      ),
                      cardHolderDecoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelStyle: const TextStyle(color: Colors.blue),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: 'Card Holder',
                      ),
                    ),
                  )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ShipAddress(),
                              ),
                            );
                          },
                          child: const Text('Place Order'),
                        ),
                      ),
                    ]),
                  )
                ])),
          ],
        ));
  }

  void onCreditCardModelChange(CreditCardModel? card) {
    setState(() {
      cardNumber = card!.cardNumber;
      expiryDate = card.expiryDate;
      cardHolderName = card.cardHolderName;
      cvvCode = card.cvvCode;
      isCvvFocused = card.isCvvFocused;
    });
  }
}
