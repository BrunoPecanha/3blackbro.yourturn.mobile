import 'package:flutter/material.dart';
import 'package:the_3_black_bro/presentation/widget/base-screen.widget.dart';
import 'package:the_3_black_bro/presentation/widget/buttons/t3bb-elevated-buton.widget.dart';
import 'package:the_3_black_bro/presentation/widget/buttons/t3bb-text-button.widget.dart';
import 'package:the_3_black_bro/presentation/widget/inputs/t3bb-text-field.widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() {
    return _StateLogin();
  }
}

class _StateLogin extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: BaseScreen(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight * 0.5,
              padding: const EdgeInsets.all(100),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: const Color(0xFFD9D9D9),
                ),
                child: const Text(
                  'Logo',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 26
                  ),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: T3BBTextField(
                  controller: email,
                  placeholder: 'E-mail',
                )
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: T3BBTextField(
                  controller: password,
                  placeholder: 'Senha',
                )
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: T3BBElevatedButton(
                  height: 50,
                  width: 600,
                  borderColor: const Color(0xFF8D8774),
                  color: const Color(0xFF8D8774),
                  borderRadius: 0,
                  onPress: () => {},
                  padding: const EdgeInsets.all(18),
                  child: const Text('Entrar', style: TextStyle(fontSize: 20)),
                )
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
              child: T3BBTextButton(
                height: 50,
                width: 600,
                padding: const EdgeInsets.all(18),
                onPress: () => {},
                title: 'Cadastrar',
                textStyle: const TextStyle(fontSize: 20, color: Color(0xFF484745)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
              child: T3BBTextButton(
                height: 25,
                width: 600,
                padding: const EdgeInsets.all(5),
                onPress: () => {},
                title: 'Esqueci minha senha',
                textStyle: const TextStyle(fontSize: 14, color: Color(0xFF484745)),
              ),
            )
          ]
      ),
    );
  }

}