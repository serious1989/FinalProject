import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({super.key});

  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  final _formKey = GlobalKey<FormState>(); // Key to uniquely identify the form.
  
  // Variables to store user inputs
  String _name = '';
  String _email = '';
  String _password = '';
  String _institution = '';
  String _country = '';
  String _idNumber = '';
  String _position = '';
  String _telephone = '';

  // List of countries for the dropdown
  final List<String> _countries = ['Ghana', 'Nigeria', 'Kenya', 'South Africa', 'United States', 'Canada'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Adds padding to the form for proper spacing.
      child: Form(
        key: _formKey, // Associates this form with the unique form key created above.
        child: ListView(
          children: [
            const Text(
              'Create Your Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Adds spacing between the title and the first input field.

            // Name Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              onSaved: (value) {
                _name = value!; // Stores the entered name in the `_name` variable when form is saved.
              },
            ),

            const SizedBox(height: 20),

            // Email Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress, // Sets the keyboard to email layout.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!; // Stores the entered email.
              },
            ),

            const SizedBox(height: 20),

            // Password Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true, // Ensures the password is hidden while typing.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!; // Stores the entered password.
              },
            ),

            const SizedBox(height: 20),

            // Institution Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'Institution'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your institution';
                }
                return null;
              },
              onSaved: (value) {
                _institution = value!; // Stores the entered institution.
              },
            ),

            const SizedBox(height: 20),

            // Country Dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Country'),
              value: _country.isNotEmpty ? _country : null, // Sets initial value (null by default).
              items: _countries.map((country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _country = value!; // Stores the selected country.
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select your country';
                }
                return null;
              },
              onSaved: (value) {
                _country = value!; // Saves the selected country.
              },
            ),

            const SizedBox(height: 20),

            // ID Number Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'ID Number'),
              keyboardType: TextInputType.number, // Sets the keyboard to number layout.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your ID number';
                }
                return null;
              },
              onSaved: (value) {
                _idNumber = value!; // Stores the entered ID number.
              },
            ),

            const SizedBox(height: 20),

            // Position Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'Position'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your position';
                }
                return null;
              },
              onSaved: (value) {
                _position = value!; // Stores the entered position.
              },
            ),

            const SizedBox(height: 20),

            // Telephone Number Field
            TextFormField(
              decoration: const InputDecoration(labelText: 'Telephone Number'),
              keyboardType: TextInputType.phone, // Sets the keyboard to phone number layout.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your telephone number';
                }
                if (!RegExp(r'^\d{10,15}$').hasMatch(value)) {
                  return 'Please enter a valid phone number';
                }
                return null;
              },
              onSaved: (value) {
                _telephone = value!; // Stores the entered telephone number.
              },
            ),

            const SizedBox(height: 20),

            // Submit Button
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) { // Checks if all form fields are valid.
                  _formKey.currentState!.save(); // Saves all field inputs after validation.
                  
                  // Use _name, _email, _password, _institution, _country, _idNumber, _position, and _telephone for further actions (e.g., saving to a database).
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Account created for $_name')),
                  );
                }
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
