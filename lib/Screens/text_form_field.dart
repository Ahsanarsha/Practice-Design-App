import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/Screens/fetch_fields_by_provider.dart';
import 'package:provider/provider.dart';

class UserData extends ChangeNotifier {
  String? name;
  String? password;

  void setData(String name, String password) {
    this.name = name;
    this.password = password;
    notifyListeners(); // notify listeners when the data is updated
  }
}

class TextFieldScreen extends StatefulWidget {
  static const routeName = '/TextFieldScreen';
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameFieldController = TextEditingController();
  final TextEditingController _passwordFieldController =
      TextEditingController();
  String _nameText = '';
  String _passwordText = '';
  bool _obscureText = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 Nums long';
    } else if (!RegExp(r'^\d{6}$').hasMatch(value)) {
      return 'Please enter only 6 numeric values';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _nameController.text = 'Ahsan Arshad'; // initial value for name field
    _passwordController.text = '123456'; // initial value for password field
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameFieldController.dispose();
    _passwordController.dispose();
    _passwordFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text('Ahsan'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                onChanged: (value) => _nameText = value,
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                onChanged: (value) => _passwordText = value,
                obscureText: !_obscureText,
                validator: _validatePassword,
                keyboardType: TextInputType.visiblePassword,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: _passwordController,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      _obscureText = !_obscureText;
                    }),
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red)),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    _nameText = _nameController.text;
                    _passwordText = _passwordController.text;

                    context.read<UserData>().setData(_nameText,
                        _passwordText); // store user entered data in UserData class

                    _nameFieldController.text = _nameText;
                    _passwordFieldController.text = _passwordText;
                  });
                  Navigator.pushNamed(context, ProviderScreens.routeName);
                }
              },
              child: const Text('Press Me'),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: _nameFieldController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  //hintText: 'Ahsan Arshad',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: _passwordFieldController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  // hintText: '123456',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
