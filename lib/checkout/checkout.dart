import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  TextEditingController _voucherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(color: Color(0xFFF51347)),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 204,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            titleText('Deliver to'),
                            Text(
                              'MD. Sazzadul Alam Sajib',
                              style: TextStyle(
                                color: Color(0xFF2C3539),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 1,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              titleText('Deliver to'),
                              Expanded(
                                child: Container(
                                  width: 380,
                                  color: Colors.cyanAccent,
                                  child: Column(
                                    children: [
                                      addressDeatilsText(
                                          'ajoldia, chamurkhan, uttarkhan, uttara, dhaka-1230  Chamurkhan,\n Dhaka - North, Dhaka'),
                                      Row(
                                        children: [
                                          adressDeatlsIcon(
                                              "assets/checkout/icon_phone.png"),
                                          addressDeatilsText('01580656216'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          adressDeatlsIcon(
                                              "assets/checkout/icon_mail.png"),
                                          addressDeatilsText(
                                              'sajibsazzadulalam@gmail.com'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          adressDeatlsIcon(
                                              "assets/checkout/icon_whatsapp.png"),
                                          addressDeatilsText('01980638247'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            titleText("Payment"),
                            Expanded(
                                child:
                                    Image.asset("assets/checkout/image_whatsapp.png")),
                            iconPlayButton("assets/checkout/icon_play_button.png")
                          ],
                        ),
                      ],
                    ),
                  ),
            
                  //
                  _buildVoucherContainer(),
            
                  Container(
                    width: 310,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            delivaryText('Delivery Charge'),
                            Text(
                              '23',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFF51347),
                                fontSize: 10,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            delivaryText('Receive by '),
                            Text(
                              '12 Mar(09:00 AM - 10:00 AM)',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF8711C1),
                                fontSize: 10,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
            
                  buildListItem(),
                  SizedBox(height: 40,),

                  buildListItem(),

                  SizedBox(height: 50,),
                  Container(
                    width: 310,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            placeOrderText("Subtotal"),
                            placeOrderTExt("2450",12)

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            placeOrderText("Test Vat"),
                            placeOrderText("Not Included"),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            placeOrderText("Subtotal"),
                            placeOrderTExt("2450",15)

                          ],
                        ),

                        Container(
                          width: 310,
                          height: 30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF51347),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),

                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

Widget placeOrderTExt(String text,double size){
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFFF51347),
        fontSize: size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    );
}
  Widget placeOrderText(String text){
    return Text(
      text,
    style: TextStyle(
      color: Color(0xFF555555),
      fontSize: 12,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      height: 1,
    ),
    );
  }

Widget buildListItem(){
    return           Container(
      width: 310,
      height: 120,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/checkout/img_chicken.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    listItemText('Whole Chicken'),
                    listPrice("22222")
                  ],
                ),
              ),
              SizedBox(width: 70,),
              listItemuanityText(),
              listItemQuantity("22")

            ],
          ),


          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/checkout/img_beef.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    listItemText('Whole Chicken'),
                    listPrice("22222")
                  ],
                ),
              ),
              SizedBox(width: 70,),
              listItemuanityText(),
              listItemQuantity("22")

            ],
          ),

        ],
      ),
    );

}
  Widget listItemQuantity(String quanity){
    return Text(
      quanity,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF2C3539),
        fontSize: 10,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    );
  }
Widget listItemuanityText(){
    return Text(
      'Qty :',
      textAlign: TextAlign.right,
      style: TextStyle(
        color: Color(0xFF555555),
        fontSize: 10,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    );
}
  Widget listPrice(String price){
    return SizedBox(
      width: 25,
      child: Text(
        price,
        style: TextStyle(
          color: Color(0xFFF51347),
          fontSize: 10,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
  Widget listItemText(String text){
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF555555),
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    );
  }

  Widget delivaryText(String text) {
    return Text(
      text,
      // 'Delivery Charge',
      style: TextStyle(
        color: Color(0xFF555555),
        fontSize: 10,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    );
  }

  Widget _buildVoucherContainer() {
    return Container(
      width: 290,
      height: 60,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          titleText("Voucher /  Promo Code"),
          Expanded(
            child: TextFormField(
              controller: _voucherController,
              decoration: InputDecoration(
                labelText: 'Add Voucher / Promo Code',
                labelStyle: TextStyle(
                  color: Color(0x7F555555),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget iconPlayButton(String imagePath) {
    return Container(
        width: 30,
        height: 30,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(),
        child: Image.asset(imagePath));
  }

  Widget adressDeatlsIcon(String imagePath) {
    return Container(
        width: 12,
        height: 12,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(),
        child: Image.asset(imagePath));
  }

  Widget addressDeatilsText(String text) {
    return Text(
      // 'ajoldia, chamurkhan, uttarkhan, uttara, dhaka-1230  Chamurkhan, Dhaka - North, Dhaka',
      text,
      style: TextStyle(
        color: Color(0xFF555555),
        fontSize: 12,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    );
  }

  Widget titleText(String text) {
    return SizedBox(
      width: 200,
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF555555),
          fontSize: 12,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          height: 1,
        ),
      ),
    );
  }
}
