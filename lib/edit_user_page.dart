// lib/edit_user_page.dart
import 'package:flutter/material.dart';
import 'api_service.dart';
import 'user_model.dart';

class EditUserPage extends StatefulWidget {
  final User user;

  const EditUserPage({super.key, required this.user});

  @override
  State<EditUserPage> createState() => _EditUserPageState();
}
//
class _EditUserPageState extends State<EditUserPage> {
  final ApiService apiService = ApiService();
  late TextEditingController _nameController;
  late TextEditingController _jobController;
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // Inisialisasi controller dengan data user yang ada
    _nameController = TextEditingController(
      text: '${widget.user.firstName} ${widget.user.lastName}',
    );
    _jobController =
        TextEditingController(); // Job tidak ada di model User awal
  }

  void _submitData() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        final response = await apiService.updateUser(
          widget.user.id.toString(),
          _nameController.text,
          _jobController.text,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('User "${response['name']}" berhasil diperbarui!'),
            backgroundColor: Colors.green,
          ),
        );
        // Kirim 'true' untuk menandakan sukses dan memicu refresh
        Navigator.of(context).pop(true);
      } catch (e) {
        String errorMessage = e.toString();
        if (errorMessage.contains('401')) {
          errorMessage =
              'Gagal: Akses ditolak (401). Mungkin perlu otentikasi.';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage), backgroundColor: Colors.red),
        );
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit User (Update)')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _jobController,
                decoration: InputDecoration(
                  labelText: 'Pekerjaan Baru',
                  hintText: 'Masukkan pekerjaan baru',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.work),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Pekerjaan tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: _submitData,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Perbarui User'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
