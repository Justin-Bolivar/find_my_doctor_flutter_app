import 'package:flutter/material.dart';

import '../models/doctor.dart';
import 'doctor_card.dart';

class TopDoctorList extends StatelessWidget {
  const TopDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              '/doctor_details',
              arguments: Doctor(
                doctorName: topDoctors[index].doctorName,
                doctorDescription: topDoctors[index].doctorDescription,
                doctorHospital: topDoctors[index].doctorHospital,
                doctorNumberOfPatient: topDoctors[index].doctorNumberOfPatient,
                doctorPicture: topDoctors[index].doctorPicture,
                doctorRating: topDoctors[index].doctorRating,
                doctorSpecialty: topDoctors[index].doctorSpecialty,
                doctorYearOfExperience:
                    topDoctors[index].doctorYearOfExperience,
              ),
            );
          },
          child: TopDoctorCard(
            doctor: topDoctors[index],
          ),
        );
      },
    );
  }
}
