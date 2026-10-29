import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const List<MataKuliah> _jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Senin',
    ),
    MataKuliah(kode: 'IF-021', nama: 'Basis Data', sks: 3, hari: 'Selasa'),
    MataKuliah(kode: 'IF-022', nama: 'Struktur Data', sks: 3, hari: 'Rabu'),
  ];

  @override
  Widget build(BuildContext context) {
    final tanggal = DateFormat(
      'EEEE, d MMMM y',
      'id_ID',
    ).format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KampusKu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Selamat Datang!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(tanggal, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 24),
          const Text(
            'Jadwal Kuliah',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          for (final mk in _jadwal)
            Card(
              child: ListTile(
                leading: const Icon(Icons.school, color: Colors.blue),
                title: Text(mk.nama),
                subtitle: Text('${mk.kode} • ${mk.hari} • ${mk.sks} SKS'),
              ),
            ),
        ],
      ),
    );
  }
}
