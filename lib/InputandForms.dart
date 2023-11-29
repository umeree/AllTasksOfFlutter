import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_form.dart';

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = RegExp(r"^[a-zA-Z]+$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}

class InputAndForms extends StatefulWidget {
  const InputAndForms({Key? key}) : super(key: key);

  @override
  State<InputAndForms> createState() => _InputAndFormsState();
}

class _InputAndFormsState extends State<InputAndForms> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input and Forms"),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomFormField(
                hintText: "Enter name",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r"[a-zA-Z\s]"),
                  ),
                ],
                validator: (val) {
                  if (val!.isValidName) {
                    return "Enter valid name";
                  }
                },
              ),
              CustomFormField(
                hintText: "Enter Email",
                validator: (val) {
                  if (!val!.isValidEmail) {
                    return "Enter valid email";
                  }
                },
              ),
              CustomFormField(
                hintText: "Enter Phone Number",
                validator: (val) {
                  if (!val!.isValidPhone) {
                    return "Enter valid Phone Number";
                  }
                },
              ),
              CustomFormField(
                hintText: "Enter Password",
                validator: (val) {
                  if (!val!.isValidPassword) {
                    return "Password is Weak";
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("You did it")),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
