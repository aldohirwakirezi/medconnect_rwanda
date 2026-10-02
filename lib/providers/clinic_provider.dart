
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/clinic.dart';

final clinicsProvider = Provider<List<Clinic>>((ref) {
  return const [
    Clinic(
      id: '1',
      name: 'Musanze Health Clinic',
      location: 'Musanze',
      service: 'General Consultation',
      icon: Icons.local_hospital,
    ),
    Clinic(
      id: '2',
      name: 'Community Medical Center',
      location: 'Musanze',
      service: 'Family Medicine',
      icon: Icons.medical_services,
    ),
    Clinic(
      id: '3',
      name: 'Wellness Care Clinic',
      location: 'Rwanda',
      service: 'General Healthcare',
      icon: Icons.health_and_safety,
    ),
  ];
});