import 'package:flutter/material.dart';
import 'package:xlo/screens/signup/widgets/field_title.dart';
import 'package:xlo/screens/signup/widgets/password_field.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Cadastrar'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            FieldTitle(
              title: 'Apelido',
              subtitle: 'como aparecerá em seus anúncios.',
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Exeplo: João S.',
              ),
              validator: (text) {
                if (text.length < 6) {
                  return 'Apelido muito cuto!';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 26,),
            FieldTitle(
              title: 'E-mail',
              subtitle: 'enviaremos um e-mail de confirmação.',
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder()
              ),
              validator: (text) {
                if (text.length < 6 || !text.contains('@')) {
                  return 'E-mail inválido!';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 26,),
            FieldTitle(
              title: 'Senha',
              subtitle: 'use letras, números e caracteres especiais.',
            ),
            PasswordField()
          ],
        ),
      ),
    );
  }
}
