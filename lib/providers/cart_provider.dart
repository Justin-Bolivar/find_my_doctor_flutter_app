import 'package:flutter/material.dart';

import '../models/doctor.dart';

class CartProvider extends ChangeNotifier {
  final List<Doctor> _appointments = [];

  List<Doctor> get appointments => _appointments;

  void add(Doctor appointment) {
    _appointments.add(appointment);
    notifyListeners();
  }

  void remove(Doctor appointment) {
    _appointments.remove(appointment);
    notifyListeners();
  }

  void removeAll(Doctor appointment) {
    _appointments.clear();
    notifyListeners();
  }

  // double getTotal() {
  //   return _appointments.fold(0, (previousValue, appointment) => previousValue + appointment.price);
  // }
}
