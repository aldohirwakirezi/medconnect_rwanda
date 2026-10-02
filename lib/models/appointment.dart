
class Appointment {
  final String id;
  final String clinicName;
  final String patientName;
  final String date;
  final String time;
  final String service;
  final String status;

  const Appointment({
    required this.id,
    required this.clinicName,
    required this.patientName,
    required this.date,
    required this.time,
    required this.service,
    required this.status,
  });

  Appointment copyWith({
    String? status,
  }) {
    return Appointment(
      id: id,
      clinicName: clinicName,
      patientName: patientName,
      date: date,
      time: time,
      service: service,
      status: status ?? this.status,
    );
  }
}