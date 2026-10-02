
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/appointment_provider.dart';
import '../widgets/appointment_card.dart';

class AdminDashboard extends ConsumerWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appointments = ref.watch(appointmentProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: appointments.isEmpty
          ? const Center(
              child: Text('No appointment requests yet.'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                final appointment = appointments[index];

                return AppointmentCard(
                  appointment: appointment,
                  showAdminActions: true,
                  onConfirm: () {
                    ref
                        .read(appointmentProvider.notifier)
                        .updateStatus(appointment.id, 'Confirmed');
                  },
                  onCancel: () {
                    ref
                        .read(appointmentProvider.notifier)
                        .updateStatus(appointment.id, 'Canceled');
                  },
                );
              },
            ),
    );
  }
}