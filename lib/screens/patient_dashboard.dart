import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/appointment_provider.dart';
import '../providers/clinic_provider.dart';
import '../widgets/clinic_card.dart';
import 'admin_dashboard.dart';
import 'appointments_screen.dart';
import 'booking_screen.dart';
import 'doctors_screen.dart';

class PatientDashboard extends ConsumerWidget {
  const PatientDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appointments = ref.watch(appointmentProvider);
    final clinics = ref.watch(clinicsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MedConnect Rwanda'),
        actions: [
          IconButton(
            tooltip: 'Demo admin dashboard',
            icon: const Icon(Icons.admin_panel_settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const AdminDashboard(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Welcome, Patient',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Manage your healthcare appointments easily.',
          ),
          const SizedBox(height: 24),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 40,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('My Appointments'),
                      Text(
                        '${appointments.length}',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  Icons.medical_services,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              title: const Text(
                'Find a Doctor',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Browse doctors and view their details',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => const DoctorsScreen(),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Available Clinics',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          ...clinics.map(
            (clinic) => ClinicCard(
              clinic: clinic,
              onBook: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => BookingScreen(clinic: clinic),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 12),

          FilledButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const AppointmentsScreen(),
                ),
              );
            },
            icon: const Icon(Icons.calendar_today),
            label: const Text('View My Appointments'),
          ),
        ],
      ),
    );
  }
}

//kirezihirwaaldo-
//240100842