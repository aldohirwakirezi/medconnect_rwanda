
import 'package:flutter/material.dart';

import '../models/clinic.dart';

class ClinicCard extends StatelessWidget {
  final Clinic clinic;
  final VoidCallback onBook;

  const ClinicCard({
    super.key,
    required this.clinic,
    required this.onBook,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: Icon(
          clinic.icon,
          color: Colors.blue,
          size: 36,
        ),
        title: Text(
          clinic.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${clinic.location}\n${clinic.service}',
        ),
        isThreeLine: true,
        trailing: FilledButton(
          onPressed: onBook,
          child: const Text('Book'),
        ),
      ),
    );
  }
}