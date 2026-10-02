import '../models/doctor_model.dart';

class DoctorService {
  static const List<Doctor> doctors = [
    Doctor(
      id: 'doctor_001',
      name: 'Dr. Jean Claude',
      specialty: 'General Practitioner',
      hospital: 'King Faisal Hospital',
      experience: '8 years',
      phone: '+250 788 123 456',
      email: 'jean.claude@medconnect.rw',
      description:
          'Experienced general practitioner providing primary healthcare, diagnosis, and treatment for a wide range of conditions.',
      imageUrl:
          'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?auto=format&fit=crop&w=600&q=80',
    ),
    Doctor(
      id: 'doctor_002',
      name: 'Dr. Alice Mukamana',
      specialty: 'Pediatrician',
      hospital: 'Rwanda Military Hospital',
      experience: '7 years',
      phone: '+250 789 234 567',
      email: 'alice.mukamana@medconnect.rw',
      description:
          'Pediatrician specializing in healthcare for children and adolescents, including routine checkups and treatment.',
      imageUrl:
          'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?auto=format&fit=crop&w=600&q=80',
    ),
    Doctor(
      id: 'doctor_003',
      name: 'Dr. Emmanuel Habimana',
      specialty: 'Cardiologist',
      hospital: 'CHUK',
      experience: '10 years',
      phone: '+250 780 345 678',
      email: 'emmanuel.habimana@medconnect.rw',
      description:
          'Cardiologist focused on cardiovascular health, heart disease prevention, diagnosis, and treatment.',
      imageUrl:
          'https://images.unsplash.com/photo-1622253692010-333f2da6031d?auto=format&fit=crop&w=600&q=80',
    ),
    Doctor(
      id: 'doctor_004',
      name: 'Dr. Diane Uwase',
      specialty: 'Dermatologist',
      hospital: 'Kibagabaga Hospital',
      experience: '6 years',
      phone: '+250 781 456 789',
      email: 'diane.uwase@medconnect.rw',
      description:
          'Dermatologist providing diagnosis and treatment for common skin, hair, and nail conditions.',
      imageUrl:
          'https://images.unsplash.com/photo-1594824476967-48c8b964273f?auto=format&fit=crop&w=600&q=80',
    ),
  ];

  List<Doctor> getDoctors() {
    return doctors;
  }

  Doctor? getDoctorById(String id) {
    try {
      return doctors.firstWhere((doctor) => doctor.id == id);
    } catch (_) {
      return null;
    }
  }
}