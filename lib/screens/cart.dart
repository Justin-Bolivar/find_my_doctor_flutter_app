import 'package:find_my_doctor/components/top_doctors.dart';
import 'package:find_my_doctor/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: Svg('assets/svg/icon-back.svg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headlineLarge,
                children: <TextSpan>[
                  TextSpan(
                      text: 'Your Cart',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: kGreyColor900)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: TopDoctorList(),
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kGreenColor,
              ),
              child: Center(
                child: Text(
                  'Remove all from Cart',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
