
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/appointment.dart';

class AppointmentNotifier extends Notifier<List<Appointment>> {
  @override
  List<Appointment> build() {
    return [];
  }

  void addAppointment({
    required String clinicName,
    required String patientName,
    required String date,
    required String time,
    required String service,
  }) {
    final appointment = Appointment(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      clinicName: clinicName,
      patientName: patientName,
      date: date,
      time: time,
      service: service,
      status: 'Pending',
    );

    state = [...state, appointment];
  }

  void updateStatus(String id, String newStatus) {
    state = [
      for (final appointment in state)
        if (appointment.id == id)
          appointment.copyWith(status: newStatus)
        else
          appointment,
    ];
  }
}

final appointmentProvider =
    NotifierProvider<AppointmentNotifier, List<Appointment>>(
  AppointmentNotifier.new,
);