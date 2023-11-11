import 'package:flutter/material.dart';

import '../../components/form_text_field.dart';

class ChangeNameModal extends StatelessWidget {
  ChangeNameModal({super.key});

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.only(
        top: 15,
      ),
      title: const Text(
        'Change account name',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16.0,
          color: Color(0xDDFFFFFF),
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color(0xFF363636),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            color: Color(0xFF979797),
            thickness: 1,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  MyFormTextField(
                    controller: usernameController,
                    initialValue: 'Martha Hays',
                    hintText: 'Martha Hays',
                    obscureText: false,
                    filled: false,
                    validator: (value) {
                      if (value == '' || value!.isEmpty) {
                        return 'Please enter old password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      actions: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 48,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16.0,
                      color: Color(0xFF8687E7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF8875FF),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
