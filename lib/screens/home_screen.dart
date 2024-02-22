import 'package:find_my_doctor/const.dart';
import 'package:flutter/material.dart';
import '../components/app_grid_menu.dart';
import '../components/home_screen_navbar.dart';
import '../components/top_doctors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeSceenNavbar(),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headlineLarge,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Find',
                      ),
                      TextSpan(
                          text: 'your Doctor',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: kGreyColor900)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 16,
                    bottom: 5,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kGreyColor500,
                  ),
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: kBlackColor900,
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                        suffixIcon:
                            const Icon(Icons.search, color: kBlackColor900),
                        suffixIconConstraints: const BoxConstraints(
                          maxHeight: 24,
                        ),
                        hintText: 'Search Doctor, medicine, etc...',
                        hintStyle: Theme.of(context).textTheme.headlineSmall,
                        contentPadding: const EdgeInsets.only(bottom: 5),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const AppGridMenu(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kBlueColor,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const TopDoctorList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
