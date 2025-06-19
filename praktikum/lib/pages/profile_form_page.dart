import 'package:flutter/material.dart';
import 'user_data.dart';

class ProfileFormPage extends StatefulWidget {
  final UserData userData;
  const ProfileFormPage({super.key, required this.userData});

  @override
  State<ProfileFormPage> createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _aboutController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.userData.name ?? '';
    _emailController.text = widget.userData.email ?? '';
    _aboutController.text = widget.userData.about ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil bearbeiten')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Pflichtfeld' : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E-Mail'),
                validator:
                    (value) =>
                        !value!.contains('@') ? 'Ungültige E-Mail' : null,
              ),
              TextFormField(
                controller: _aboutController,
                decoration: const InputDecoration(labelText: 'Über mich'),
                maxLines: 3,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.userData.name = _nameController.text;
                    widget.userData.email = _emailController.text;
                    widget.userData.about = _aboutController.text;

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Profil gespeichert: ${_nameController.text}',
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Speichern'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Zurück'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
