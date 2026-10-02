
import 'package:flutter/material.dart';

class Clinic {
  final String id;
  final String name;
  final String location;
  final String service;
  final IconData icon;

  const Clinic({
    required this.id,
    required this.name,
    required this.location,
    required this.service,
    required this.icon,
  });
}