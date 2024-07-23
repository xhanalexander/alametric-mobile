import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeForm extends StatelessWidget {
  final String hintTextName;
  final TextEditingController controllerNames;
  final void Function(String)? onChanged;

  const CodeForm({
    super.key, 
    required this.hintTextName, 
    required this.controllerNames,
    this.onChanged  
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerNames,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Nomor tidak boleh kosong';
        }
      },
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.numbers, color: Colors.grey),
        isDense: true,
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        hintText: hintTextName,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.deepPurpleAccent,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class NameForm extends StatelessWidget {
  final String hintTextName;
  final TextEditingController controllerNames;

  const NameForm({
    super.key,
    required this.hintTextName,
    required this.controllerNames,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerNames,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Nama tidak boleh kosong';
        }
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person, color: Colors.grey),
        isDense: true,
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        hintText: hintTextName,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.deepPurpleAccent,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class PasswordForm extends StatelessWidget {
  final String hintTextName;
  final TextEditingController controllerNames;
  final bool isPasswordVisible;
  final void Function()? onPressedPassword;
  final void Function(String)? onChanged;

  const PasswordForm({
    super.key, 
    required this.hintTextName, 
    required this.controllerNames,
    required this.isPasswordVisible,
    required this.onPressedPassword,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerNames,
      obscureText: !isPasswordVisible,
      onChanged: onChanged,
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s")),
      ],
      // validator: (value) => Constant.passwordValidator,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock, color: Colors.grey),
        isDense: true,
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        hintText: hintTextName,
        suffixIcon: IconButton(
          onPressed: onPressedPassword,
          icon: isPasswordVisible ? const Icon(Icons.visibility_off, color: Colors.grey) : const Icon(Icons.visibility, color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class LabelForm extends StatelessWidget {
  final String labelName;
  const LabelForm({
    super.key,
    required this.labelName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      labelName,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}