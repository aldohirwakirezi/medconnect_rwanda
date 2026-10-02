
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/appointment_provider.dart';
import '../widgets/appointment_card.dart';

class AppointmentsScreen extends ConsumerWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appointments = ref.watch(appointmentProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Appointments'),
      ),
      body: appointments.isEmpty
          ? const Center(
              child: Text(
                'No appointments yet.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                return AppointmentCard(
                  appointment: appointments[index],
                );
              },
            ),
    );
  }
}