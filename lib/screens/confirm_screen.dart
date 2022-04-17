import 'package:flutter/material.dart';
import 'package:food_apps/models/menu.dart';
import 'package:food_apps/theme.dart';
import 'package:food_apps/widgets/menu_card.dart';
import 'package:food_apps/screens/home_screen.dart';

import 'checkout_screen.dart';


class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  get emailController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset('assets/btn_back.png', width: 40),
                    ),
                    Text(
                      'Konfirmasi Pesanan',
                      style: poppinsTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      ),
                    ),
                  ],
                ),
              ),
  
            Text(
              'Alamat Pengiriman',
              style: poppinsTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: blackColor,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width,
              child: 
              Text(
                'Jalan Joyo Grand Kav Depag III no 79, KOTA MALANG, LOWOKWARU, JAWA TIMUR, ID, 65144',
                style: poppinsTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: greyColor,
                ),
              ),
            ),
            const SizedBox(height: 22),
            Text(
              'Burger BROS',
              style: poppinsTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: blackColor,
              ),
            ),
            const SizedBox(height: 22),
            MenuCard(
              Menu(
                id: 1,
                image: 'assets/image1.png',
                name: 'Burger Regular',
                price: 20000,
                pricePromo: 15000,
                note: 'Free Delivery',
                isPromo: true,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Material(
                    color: whiteColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    elevation: 2,
                      child: AspectRatio(
                        aspectRatio: 7 / 1,
                           child: Center(
                              child: TextFormField(
                                  decoration: const InputDecoration(hintText: 'Catatan: ', border: InputBorder.none, contentPadding: EdgeInsets.all(8)),
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                              )
                            )
                      )
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Total Pesananan (1  menu)',
                    style: poppinsTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Metode Pembayaran:',
                        style: poppinsTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: blackColor,
                        ),
                      ),  
                      Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 19),
                                InkWell(
                                  child: Image.asset(
                                    'assets/btn_beli.png',
                                    width: 80,
                                  ),
                                ),
                ]                 
              ),                                   
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [  
                      Text(
                        'Biaya layanan',
                        style: poppinsTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: blackColor,
                        ),
                      ),
                      Text(
                        'Rp.3000',
                        style: poppinsTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: yellowColor,
                        ),
                      ), 
                ]
            ),
               const SizedBox(height: 18),
                            Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [  
                      Text(
                        'Total',
                        style: poppinsTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: blackColor,
                        ),
                      ),
                      Text(
                        'Rp.18.000',
                        style: poppinsTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: yellowColor,
                              )
                            )
                ]
            ),
            const SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                disabledElevation: 0,
                                highlightElevation: 0,
                                onPressed: () {
                                  Navigator.push(context, 
                                    MaterialPageRoute(builder: (context) => const CheckoutScreen()));
                                },
                                color: yellowColor,
                                child: Text(
                                  'Pesan Sekarang',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                  )
                                )
                              )
            )
                ]
                  )
            )
          ],
        )
      )
      )
    );
  }
}